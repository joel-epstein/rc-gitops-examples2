// run this command to eval this cue and verify
// cue eval -e all_kiwis_yaml --out text -t number=2 all_k8s.cue


import (
	"strings"
	"list"
	"encoding/yaml"
)

namespace: string | *"foobar-1" @tag(name)
number: int | *1 @tag(number,type=int)

_namespace2fruit: {
	"foobar-1": "kiwi",
	"foobar-2": "peach",
	"foobar-3": "orange",
	"foobar-4": "fig",
	"foobar-5": "grape",
	"foobar-6": "melon",
	"foobar-7": "cranberry",
	"foobar-8": "star",
	"foobar-9": "tangerine",
	"foobar-10": "blueberry",
}



everything: list.Concat([
	(_sync_template & {_namespace: namespace}).objects,
	(_manifests_template & {_namespace: namespace}).objects,
	all_fruit,
])






_fruit_template: {
	_name: string
	apiVersion: "apps/v1"
	kind:       "Deployment"
	metadata: {
		name: _name
		annotations: "greymatter.io/inject-sidecar-to": "3000"
	}
	spec: {
		selector: matchLabels: app: _name
		template: {
			metadata: labels: app: _name
			spec: containers: [{
				name:  _name
				image: "python:3"
				command: ["python"]
				args: ["-m", "http.server", "3000"]
			}]
		}
	}
}


all_fruit: [for i in list.Range(1,number+1,1) {

   _fruit_template & {_name:"\(_namespace2fruit[namespace])-\(i)"}

}]

all_fruit_yaml: yaml.MarshalStream(all_fruit)







///////
//sync.yaml

_sync_template: {
	_namespace: string
	objects: [{
		apiVersion: "apps/v1"
		kind:       "StatefulSet"
		metadata: {
			name:      "greymatter-sync"
			namespace: _namespace
		}
		spec: {
			selector: matchLabels: app: "greymatter-sync"
			serviceName: "greymatter-sync"
			replicas:    1
			template: {
				metadata: labels: app: "greymatter-sync"
				spec: {
					terminationGracePeriodSeconds: 10
					imagePullSecrets: [{
						name: "gm-docker-secret"
					}]
					volumes: [{
						name: "ssh-private-key"
						secret: secretName: "greymatter-sync-secret"
					}]
					containers: [{
						name:            "greymatter-sync"
						image:           "quay.io/greymatterio/cli:4.4.0-rc.8"
						imagePullPolicy: "Always"
						command: ["/usr/local/bin/greymatter"]
						args: [
							"-c",
							"/etc/greymatter/config.toml",
							"--api",
							"http://controlensemble.greymatter.svc.cluster.local:5555",
							"--catalog",
							"http://catalog.greymatter.svc.cluster.local:8080",
							"sync",
							"--ssh-private-key",
							"/var/lib/greymatter/.ssh/ssh-private-key",
							"--git",
							"--forever",
							"--branch",
							_namespace,
							"--interval",
							"10s",
							"--git-dir",
							"/var/lib/greymatter/checkout",
							"-e",
							"configs",
							"--redis-addr",
							"greymatter-datastore.greymatter.svc.cluster.local:6379",
							"--redis-passphrase",
							"",
							"--redis-username",
							"",
							"--redis-db",
							"0",
						]

						resources: {
							limits: {
								cpu:    "200m"
								memory: "512Mi"
							}
							requests: {
								cpu:    "50m"
								memory: "128Mi"
							}
						}
						volumeMounts: [{
							name:      "ssh-private-key"
							readOnly:  true
							mountPath: "/var/lib/greymatter/.ssh"
						}]
						env: [{
							name:  "SSH_KNOWN_HOSTS"
							value: "/tmp/known_hosts"
						}, {
							name: "GREYMATTER_GIT_REMOTE"
							valueFrom: configMapKeyRef: {
								name: "greymatter-sync-config"
								key:  "GREYMATTER_GIT_REMOTE"
							}
						}]
					}]
				}
			}
		}
	}, {
		apiVersion: "v1"
		kind:       "ConfigMap"
		metadata: {
			name:      "greymatter-sync-config"
			namespace: _namespace
		}
		data: {
			GREYMATTER_GIT_REMOTE: "git@github.com:joel-epstein/rc-gitops-examples2.git"
		}
	}]
}


////////////
// manifests.yaml


_manifests_template: {
	_namespace: string
	_name: strings.Split(_namespace, "-")
	objects: [{
		apiVersion: "apps/v1"
		kind:       "Deployment"
		metadata: {
			name:      "edge-grocerylist\(_name[1])"
			namespace: _namespace
		}
		spec: {
			replicas: 1
			selector: matchLabels: "greymatter.io/cluster": "edge_grocerylist2"
			template: {
				metadata: labels: "greymatter.io/cluster": "edge_grocerylist2"
				spec: {
					containers: [{
						name:            "sidecar"
						image:           "quay.io/greymatterio/gm-proxy:1.7.1"
						imagePullPolicy: "Always"
						ports: [{
							containerPort: 10810
							name:          "proxy"
						}]
						env: [{
							name:  "XDS_CLUSTER"
							value: "edge_grocerylist2"
						}, {
							name:  "ENVOY_ADMIN_LOG_PATH"
							value: "/dev/stdout"
						}, {
							name:  "PROXY_DYNAMIC"
							value: "true"
						}, {
							name:  "XDS_ZONE"
							value: "default-zone"
						}, {
							name:  "XDS_HOST"
							value: "controlensemble.greymatter.svc.cluster.local"
						}, {
							name:  "XDS_PORT"
							value: "50000"
						}]
						resources: {
							limits: {
								cpu:    "200m"
								memory: "200Mi"
							}
							requests: {
								cpu:    "100m"
								memory: "128Mi"
							}
						}
					}]
					imagePullSecrets: [{
						name: "gm-docker-secret"
					}]
				}
			}
		}
	}, {
		apiVersion: "v1"
		kind:       "Service"
		metadata: {
			name:      "edge-grocerylist"
			namespace: "foobar-2"
		}
		spec: {
			ports: [{
				name:       "ingress"
				port:       10810
				protocol:   "TCP"
				targetPort: 10810
			}]
			selector: "greymatter.io/cluster": "edge_grocerylist2"
			type: "LoadBalancer"
		}
	}]
}
