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

//    grocerylist["Star_\(i)"].config

// }]

grocerylist_config:
	list.Concat([
		grocerylist.Apple.config,
		grocerylist.Banana.config,
		grocerylist.Lettuce.config,
		grocerylist.Tomato.config,
		grocerylist.Star_1.config,
		grocerylist.Star_2.config,
		grocerylist.Star_3.config,
		grocerylist.Star_4.config,
		grocerylist.Star_5.config,
		grocerylist.Star_6.config,
		grocerylist.Star_7.config,
		grocerylist.Star_8.config,
		grocerylist.Star_9.config,
		grocerylist.Star_10.config,
		grocerylist.Star_11.config,
		grocerylist.Star_12.config,
		grocerylist.Star_13.config,
		grocerylist.Star_14.config,
		grocerylist.Star_15.config,
		grocerylist.Star_16.config,
		grocerylist.Star_17.config,
		grocerylist.Star_18.config,
		grocerylist.Star_19.config,
		grocerylist.Star_20.config,
		grocerylist.Star_21.config,
		grocerylist.Star_22.config,
		grocerylist.Star_23.config,
		grocerylist.Star_24.config,
		grocerylist.Star_25.config,
		grocerylist.Star_26.config,
		grocerylist.Star_27.config,
		grocerylist.Star_28.config,
		grocerylist.Star_29.config,
		grocerylist.Star_30.config,
		grocerylist.Star_31.config,
		grocerylist.Star_32.config,
		grocerylist.Star_33.config,
		grocerylist.Star_34.config,
		grocerylist.Star_35.config,
		grocerylist.Star_36.config,
		grocerylist.Star_37.config,
		grocerylist.Star_38.config,
		grocerylist.Star_39.config,
		grocerylist.Star_40.config,
		grocerylist.Star_41.config,
		grocerylist.Star_42.config,
		grocerylist.Star_43.config,
		grocerylist.Star_44.config,
		grocerylist.Star_45.config,
		grocerylist.Star_46.config,
		grocerylist.Star_47.config,
		grocerylist.Star_48.config,
		grocerylist.Star_49.config,
		grocerylist.Star_50.config,
	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
