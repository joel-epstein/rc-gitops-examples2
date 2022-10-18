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

//    grocerylist["Blueberry_\(i)"].config

// }]

grocerylist_config:
	list.Concat([
		grocerylist.Blueberry_1.config,
		grocerylist.Blueberry_2.config,
		grocerylist.Blueberry_3.config,
		grocerylist.Blueberry_4.config,
		grocerylist.Blueberry_5.config,
		grocerylist.Blueberry_6.config,
		grocerylist.Blueberry_7.config,
		grocerylist.Blueberry_8.config,
		grocerylist.Blueberry_9.config,
		grocerylist.Blueberry_10.config,
		grocerylist.Blueberry_11.config,
		grocerylist.Blueberry_12.config,
		grocerylist.Blueberry_13.config,
		grocerylist.Blueberry_14.config,
		grocerylist.Blueberry_15.config,
		grocerylist.Blueberry_16.config,
		grocerylist.Blueberry_17.config,
		grocerylist.Blueberry_18.config,
		grocerylist.Blueberry_19.config,
		grocerylist.Blueberry_20.config,
		grocerylist.Blueberry_21.config,
		grocerylist.Blueberry_22.config,
		grocerylist.Blueberry_23.config,
		grocerylist.Blueberry_24.config,
		grocerylist.Blueberry_25.config,
		grocerylist.Blueberry_26.config,
		grocerylist.Blueberry_27.config,
		grocerylist.Blueberry_28.config,
		grocerylist.Blueberry_29.config,
		grocerylist.Blueberry_30.config,
		grocerylist.Blueberry_31.config,
		grocerylist.Blueberry_32.config,
		grocerylist.Blueberry_33.config,
		grocerylist.Blueberry_34.config,
		grocerylist.Blueberry_35.config,
		grocerylist.Blueberry_36.config,
		grocerylist.Blueberry_37.config,
		grocerylist.Blueberry_38.config,
		grocerylist.Blueberry_39.config,
		grocerylist.Blueberry_40.config,
		grocerylist.Blueberry_41.config,
		grocerylist.Blueberry_42.config,
		grocerylist.Blueberry_43.config,
		grocerylist.Blueberry_44.config,
		grocerylist.Blueberry_45.config,
		grocerylist.Blueberry_46.config,
		grocerylist.Blueberry_47.config,
		grocerylist.Blueberry_48.config,
		grocerylist.Blueberry_49.config,
		grocerylist.Blueberry_50.config,
	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
