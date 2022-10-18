// All greymatter config objects for core componenents drawn together
// for simultaneous deployment.

// EXPORTS.cue is the finalized configuration file that gets read by a GitOPS
// tool to import and sync configuration with a remote deployed greymatter
// instance.

// You may specify which array of configs you'd like to sync or bundle them all
// in one. We recommend splitting out your configs through namespaces such as
// core services, business applications, etc...

// example evaluation commands:
// cue eval -c EXPORTS.cue --out yaml -e grocerylist_config
// cue eval -c EXPORTS.cue --out json -e configs
// cue eval -c EXPORTS.cue -e configs

// This package name refers to your target mesh. We are attempting to write
// configs for the "exports" greymatter mesh so we all our top level
// package "exports". This does not need to match the cue module name.
package exports

import (
	// Point to the services folder in the grocerylist package since that's where we actually 
	// define our mesh configurations for individual applications/services.
	core "grocerylist.module/greymatter/core:grocerylist"
	grocerylist "grocerylist.module/greymatter/grocerylist:grocerylist"
	"list"
)

// This code lets you specify the number of kiwi services. 2nd arg to list.Range()
// There are 1000 services defined in the project dir
// kiwi: [for i in list.Range(1,10,1) {

//    grocerylist["Tangerine_\(i)"].config

// }]

grocerylist_config:
	list.Concat([
		grocerylist.Tangerine_1.config,
		grocerylist.Tangerine_2.config,
		grocerylist.Tangerine_3.config,
		grocerylist.Tangerine_4.config,
		grocerylist.Tangerine_5.config,
		grocerylist.Tangerine_6.config,
		grocerylist.Tangerine_7.config,
		grocerylist.Tangerine_8.config,
		grocerylist.Tangerine_9.config,
		grocerylist.Tangerine_10.config,
		grocerylist.Tangerine_11.config,
		grocerylist.Tangerine_12.config,
		grocerylist.Tangerine_13.config,
		grocerylist.Tangerine_14.config,
		grocerylist.Tangerine_15.config,
		grocerylist.Tangerine_16.config,
		grocerylist.Tangerine_17.config,
		grocerylist.Tangerine_18.config,
		grocerylist.Tangerine_19.config,
		grocerylist.Tangerine_20.config,
		grocerylist.Tangerine_21.config,
		grocerylist.Tangerine_22.config,
		grocerylist.Tangerine_23.config,
		grocerylist.Tangerine_24.config,
		grocerylist.Tangerine_25.config,
		grocerylist.Tangerine_26.config,
		grocerylist.Tangerine_27.config,
		grocerylist.Tangerine_28.config,
		grocerylist.Tangerine_29.config,
		grocerylist.Tangerine_30.config,
		grocerylist.Tangerine_31.config,
		grocerylist.Tangerine_32.config,
		grocerylist.Tangerine_33.config,
		grocerylist.Tangerine_34.config,
		grocerylist.Tangerine_35.config,
		grocerylist.Tangerine_36.config,
		grocerylist.Tangerine_37.config,
		grocerylist.Tangerine_38.config,
		grocerylist.Tangerine_39.config,
		grocerylist.Tangerine_40.config,
		grocerylist.Tangerine_41.config,
		grocerylist.Tangerine_42.config,
		grocerylist.Tangerine_43.config,
		grocerylist.Tangerine_44.config,
		grocerylist.Tangerine_45.config,
		grocerylist.Tangerine_46.config,
		grocerylist.Tangerine_47.config,
		grocerylist.Tangerine_48.config,
		grocerylist.Tangerine_49.config,
		grocerylist.Tangerine_50.config,
	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
