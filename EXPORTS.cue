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

//    grocerylist["Kiwi_\(i)"].config

// }]

grocerylist_config:
	list.Concat([
		grocerylist.Apple.config,
		grocerylist.Banana.config,
		grocerylist.Lettuce.config,
		grocerylist.Tomato.config,
		grocerylist.Kiwi_1.config,
		grocerylist.Kiwi_2.config,
		grocerylist.Kiwi_3.config,
		grocerylist.Kiwi_4.config,
		grocerylist.Kiwi_5.config,
		grocerylist.Kiwi_6.config,
		grocerylist.Kiwi_7.config,
		grocerylist.Kiwi_8.config,
		grocerylist.Kiwi_9.config,
		grocerylist.Kiwi_10.config,
		grocerylist.Kiwi_11.config,
		grocerylist.Kiwi_12.config,
		grocerylist.Kiwi_13.config,
		grocerylist.Kiwi_14.config,
		grocerylist.Kiwi_15.config,
		grocerylist.Kiwi_16.config,
		grocerylist.Kiwi_17.config,
		grocerylist.Kiwi_18.config,
		grocerylist.Kiwi_19.config,
		grocerylist.Kiwi_20.config,
		grocerylist.Kiwi_21.config,
		grocerylist.Kiwi_22.config,
		grocerylist.Kiwi_23.config,
		grocerylist.Kiwi_24.config,
		grocerylist.Kiwi_25.config,
		grocerylist.Kiwi_26.config,
		grocerylist.Kiwi_27.config,
		grocerylist.Kiwi_28.config,
		grocerylist.Kiwi_29.config,
		grocerylist.Kiwi_30.config,
		grocerylist.Kiwi_31.config,
		grocerylist.Kiwi_32.config,
		grocerylist.Kiwi_33.config,
		grocerylist.Kiwi_34.config,
		grocerylist.Kiwi_35.config,
		grocerylist.Kiwi_36.config,
		grocerylist.Kiwi_37.config,
		grocerylist.Kiwi_38.config,
		grocerylist.Kiwi_39.config,
		grocerylist.Kiwi_40.config,
		grocerylist.Kiwi_41.config,
		grocerylist.Kiwi_42.config,
		grocerylist.Kiwi_43.config,
		grocerylist.Kiwi_44.config,
		grocerylist.Kiwi_45.config,
		grocerylist.Kiwi_46.config,
		grocerylist.Kiwi_47.config,
		grocerylist.Kiwi_48.config,
		grocerylist.Kiwi_49.config,
		grocerylist.Kiwi_50.config,
		
	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
