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

//    grocerylist["Melon_\(i)"].config

// }]

grocerylist_config:
	list.Concat([
		grocerylist.Apple.config,
		grocerylist.Banana.config,
		grocerylist.Lettuce.config,
		grocerylist.Tomato.config,
		grocerylist.Melon_1.config,
		grocerylist.Melon_2.config,
		grocerylist.Melon_3.config,
		grocerylist.Melon_4.config,
		grocerylist.Melon_5.config,
		grocerylist.Melon_6.config,
		grocerylist.Melon_7.config,
		grocerylist.Melon_8.config,
		grocerylist.Melon_9.config,
		grocerylist.Melon_10.config,
		grocerylist.Melon_11.config,
		grocerylist.Melon_12.config,
		grocerylist.Melon_13.config,
		grocerylist.Melon_14.config,
		grocerylist.Melon_15.config,
		grocerylist.Melon_16.config,
		grocerylist.Melon_17.config,
		grocerylist.Melon_18.config,
		grocerylist.Melon_19.config,
		grocerylist.Melon_20.config,
		grocerylist.Melon_21.config,
		grocerylist.Melon_22.config,
		grocerylist.Melon_23.config,
		grocerylist.Melon_24.config,
		grocerylist.Melon_25.config,
		grocerylist.Melon_26.config,
		grocerylist.Melon_27.config,
		grocerylist.Melon_28.config,
		grocerylist.Melon_29.config,
		grocerylist.Melon_30.config,
		grocerylist.Melon_31.config,
		grocerylist.Melon_32.config,
		grocerylist.Melon_33.config,
		grocerylist.Melon_34.config,
		grocerylist.Melon_35.config,
		grocerylist.Melon_36.config,
		grocerylist.Melon_37.config,
		grocerylist.Melon_38.config,
		grocerylist.Melon_39.config,
		grocerylist.Melon_40.config,
		grocerylist.Melon_41.config,
		grocerylist.Melon_42.config,
		grocerylist.Melon_43.config,
		grocerylist.Melon_44.config,
		grocerylist.Melon_45.config,
		grocerylist.Melon_46.config,
		grocerylist.Melon_47.config,
		grocerylist.Melon_48.config,
		grocerylist.Melon_49.config,
		grocerylist.Melon_50.config,
	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
