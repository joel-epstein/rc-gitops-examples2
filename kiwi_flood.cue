// run this command to eval this cue and verify
// cue eval -e all_kiwis_yaml --out text -t num=2 kiwi_flood.cue


import (
	"list"
	"encoding/yaml"
)

num_kiwis: int | *1 @tag(num,type=int)
_kiwi_template: {
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


all_kiwis: [for i in list.Range(1,num_kiwis+1,1) {

   _kiwi_template & {_name:"kiwi-\(i)"}

}]

all_kiwis_yaml: yaml.MarshalStream(all_kiwis)
