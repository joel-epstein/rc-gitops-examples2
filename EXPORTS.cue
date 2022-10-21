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

//    grocerylist["Cranberry_\(i)"].config

// }]

grocerylist_config:
	list.Concat([
		grocerylist.Cranberry_1.config,
		grocerylist.Cranberry_2.config,
		grocerylist.Cranberry_3.config,
		grocerylist.Cranberry_4.config,
		grocerylist.Cranberry_5.config,
		grocerylist.Cranberry_6.config,
		grocerylist.Cranberry_7.config,
		grocerylist.Cranberry_8.config,
		grocerylist.Cranberry_9.config,
		grocerylist.Cranberry_10.config,
		grocerylist.Cranberry_11.config,
		grocerylist.Cranberry_12.config,
		grocerylist.Cranberry_13.config,
		grocerylist.Cranberry_14.config,
		grocerylist.Cranberry_15.config,
		grocerylist.Cranberry_16.config,
		grocerylist.Cranberry_17.config,
		grocerylist.Cranberry_18.config,
		grocerylist.Cranberry_19.config,
		grocerylist.Cranberry_20.config,
		grocerylist.Cranberry_21.config,
		grocerylist.Cranberry_22.config,
		grocerylist.Cranberry_23.config,
		grocerylist.Cranberry_24.config,
		grocerylist.Cranberry_25.config,
		grocerylist.Cranberry_26.config,
		grocerylist.Cranberry_27.config,
		grocerylist.Cranberry_28.config,
		grocerylist.Cranberry_29.config,
		grocerylist.Cranberry_30.config,
		grocerylist.Cranberry_31.config,
		grocerylist.Cranberry_32.config,
		grocerylist.Cranberry_33.config,
		grocerylist.Cranberry_34.config,
		grocerylist.Cranberry_35.config,
		grocerylist.Cranberry_36.config,
		grocerylist.Cranberry_37.config,
		grocerylist.Cranberry_38.config,
		grocerylist.Cranberry_39.config,
		grocerylist.Cranberry_40.config,
		grocerylist.Cranberry_41.config,
		grocerylist.Cranberry_42.config,
		grocerylist.Cranberry_43.config,
		grocerylist.Cranberry_44.config,
		grocerylist.Cranberry_45.config,
		grocerylist.Cranberry_46.config,
		grocerylist.Cranberry_47.config,
		grocerylist.Cranberry_48.config,
		grocerylist.Cranberry_49.config,
		grocerylist.Cranberry_50.config,
		grocerylist.Cranberry_51.config,
		grocerylist.Cranberry_52.config,
		grocerylist.Cranberry_53.config,
		grocerylist.Cranberry_54.config,
		grocerylist.Cranberry_55.config,
		grocerylist.Cranberry_56.config,
		grocerylist.Cranberry_57.config,
		grocerylist.Cranberry_58.config,
		grocerylist.Cranberry_59.config,
		grocerylist.Cranberry_60.config,
		grocerylist.Cranberry_61.config,
		grocerylist.Cranberry_62.config,
		grocerylist.Cranberry_63.config,
		grocerylist.Cranberry_64.config,
		grocerylist.Cranberry_65.config,
		grocerylist.Cranberry_66.config,
		grocerylist.Cranberry_67.config,
		grocerylist.Cranberry_68.config,
		grocerylist.Cranberry_69.config,
		grocerylist.Cranberry_70.config,
		grocerylist.Cranberry_71.config,
		grocerylist.Cranberry_72.config,
		grocerylist.Cranberry_73.config,
		grocerylist.Cranberry_74.config,
		grocerylist.Cranberry_75.config,
		grocerylist.Cranberry_76.config,
		grocerylist.Cranberry_77.config,
		grocerylist.Cranberry_78.config,
		grocerylist.Cranberry_79.config,
		grocerylist.Cranberry_80.config,
		grocerylist.Cranberry_81.config,
		grocerylist.Cranberry_82.config,
		grocerylist.Cranberry_83.config,
		grocerylist.Cranberry_84.config,
		grocerylist.Cranberry_85.config,
		grocerylist.Cranberry_86.config,
		grocerylist.Cranberry_87.config,
		grocerylist.Cranberry_88.config,
		grocerylist.Cranberry_89.config,
		grocerylist.Cranberry_90.config,
		grocerylist.Cranberry_91.config,
		grocerylist.Cranberry_92.config,
		grocerylist.Cranberry_93.config,
		grocerylist.Cranberry_94.config,
		grocerylist.Cranberry_95.config,
		grocerylist.Cranberry_96.config,
		grocerylist.Cranberry_97.config,
		grocerylist.Cranberry_98.config,
		grocerylist.Cranberry_99.config,
		grocerylist.Cranberry_100.config,

	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
