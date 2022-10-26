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
		grocerylist.Kiwi_51.config,
		grocerylist.Kiwi_52.config,
		grocerylist.Kiwi_53.config,
		grocerylist.Kiwi_54.config,
		grocerylist.Kiwi_55.config,
		grocerylist.Kiwi_56.config,
		grocerylist.Kiwi_57.config,
		grocerylist.Kiwi_58.config,
		grocerylist.Kiwi_59.config,
		grocerylist.Kiwi_60.config,
		grocerylist.Kiwi_61.config,
		grocerylist.Kiwi_62.config,
		grocerylist.Kiwi_63.config,
		grocerylist.Kiwi_64.config,
		grocerylist.Kiwi_65.config,
		grocerylist.Kiwi_66.config,
		grocerylist.Kiwi_67.config,
		grocerylist.Kiwi_68.config,
		grocerylist.Kiwi_69.config,
		grocerylist.Kiwi_70.config,
		grocerylist.Kiwi_71.config,
		grocerylist.Kiwi_72.config,
		grocerylist.Kiwi_73.config,
		grocerylist.Kiwi_74.config,
		grocerylist.Kiwi_75.config,
		grocerylist.Kiwi_76.config,
		grocerylist.Kiwi_77.config,
		grocerylist.Kiwi_78.config,
		grocerylist.Kiwi_79.config,
		grocerylist.Kiwi_80.config,
		grocerylist.Kiwi_81.config,
		grocerylist.Kiwi_82.config,
		grocerylist.Kiwi_83.config,
		grocerylist.Kiwi_84.config,
		grocerylist.Kiwi_85.config,
		grocerylist.Kiwi_86.config,
		grocerylist.Kiwi_87.config,
		grocerylist.Kiwi_88.config,
		grocerylist.Kiwi_89.config,
		grocerylist.Kiwi_90.config,
		grocerylist.Kiwi_91.config,
		grocerylist.Kiwi_92.config,
		grocerylist.Kiwi_93.config,
		grocerylist.Kiwi_94.config,
		grocerylist.Kiwi_95.config,
		grocerylist.Kiwi_96.config,
		grocerylist.Kiwi_97.config,
		grocerylist.Kiwi_98.config,
		grocerylist.Kiwi_99.config,
		grocerylist.Kiwi_100.config,
		
	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
