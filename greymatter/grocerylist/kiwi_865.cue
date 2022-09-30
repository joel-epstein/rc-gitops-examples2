package grocerylist

let Name = "kiwi_865"
let IngressName = "\(Name)_ingress_to_\(Name)"
let EgressToRedisName = "\(Name)_egress_to_redis"

// Top level service objects enable programmatic access to service 
// metadata when exported. Tagging can be used throughout the CUE
// to do things like namespace object keys, provide contextual information
// about your service such as the name, which mesh it belongs too, etc...
// Each service object is REQUIRED to have a `config` array that contains
// all associated mesh configurations as displayed below.
Kiwi_865: {
	name:   Name
	config: [
		
		// Kiwi_865 -> HTTP ingress to your container
		#domain & {
			domain_key: IngressName
			_force_https: true
		},
		#listener & {
			listener_key:          IngressName
			_spire_self:           Name
			_gm_observables_topic: Name
			_is_ingress:           true
			_enable_rbac:          true
		//	_enable_impersonation: true
		//  NOTE: this must be filled out by a user. Impersonation allows other services to act on the behalf of indentities
		//  inside the system. Please uncomment if you wish to enable impersonation. If the servers list if left empty,
		//  all traffic will be blocked.
		//	http_filters: gm_impersonation: {
		//		servers: ""
		//		caseSensitive: false
		//	}
		},
		// upstream_port -> port your service is listening on.
		// This can always remain localhost insecure since pods are
		// closed off to the rest of the world. greymatter.io recommends
		// you perform TLS termination at the sidecar level.
		#cluster & {cluster_key: IngressName, _upstream_port: 443},
		#route & {route_key:     IngressName},
		

		// Egress redis connections specifically defined for enabling the 
		// greymatter health checking system. Please do not remove these 
		// otherwise services may not properly report their health to the mesh.
		#domain & {domain_key: EgressToRedisName, port: defaults.ports.redis_ingress},
		#cluster & {
			cluster_key:  EgressToRedisName
			name:         defaults.redis_cluster_name
			_spire_self:  Name
			_spire_other: defaults.redis_cluster_name
		},
		#route & {route_key: EgressToRedisName},
		#listener & {
			listener_key:  EgressToRedisName
			ip:            "127.0.0.1" // egress listeners are local-only
			port:          defaults.ports.redis_ingress
			_tcp_upstream: defaults.redis_cluster_name // NB this points at a cluster name, not key
		},


		// Edge config for the Kiwi_865 service.
		// These configs are REQUIRED for your service to be accessible
		// outside your cluster/mesh.
		#cluster & {
			cluster_key:  Name
			_spire_other: Name
			ssl_config: {
				protocols: [ "TLS_AUTO"]
				trust_file: "/etc/proxy/tls/sidecar/ca.crt"
				cert_key_pairs: [
					{
						certificate_path: "/etc/proxy/tls/sidecar/server.crt"
						key_path:         "/etc/proxy/tls/sidecar/server.key"
					},
				]
            }
		},
		#route & {
			domain_key: defaults.edge.key
			route_key:  Name
			route_match: {
				path: "/services/grocerylist/kiwi_865/"
			}
			redirects: [
				{
					from:          "^/services/grocerylist/kiwi_865$"
					to:            route_match.path
					redirect_type: "permanent"
				},
			]
			prefix_rewrite: "/"
		},

		// greymatter catalog service definition for kiwi_865
		#catalog_entry & {
			name:                      Name
			mesh_id:                   mesh.metadata.name
			service_id:                Name
			version:                   "v1.0.0"
			description:               "EDIT ME: service description goes here"
			api_endpoint:              "https://\(defaults.edge.endpoint)/services/grocerylist/\(Name)/"
			api_spec_endpoint:         "https://\(defaults.edge.endpoint)/services/grocerylist/\(Name)/"
			business_impact:           "low"
			enable_instance_metrics:   true
			enable_historical_metrics: false
		},

		// Shared kiwi_865 proxy object. All configs
		// become associated with this object with the exception
		// of the catalog definition. Proxy objects are REQUIRED
		// to register your service in a greymatter mesh and MUST
		// be created after all other objects.
		#proxy & {
			proxy_key: Name
			domain_keys: [IngressName,EgressToRedisName]
			listener_keys: [IngressName,EgressToRedisName]
		}
	]
}
