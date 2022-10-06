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
		grocerylist.Kiwi1.config,
		grocerylist.Kiwi2.config,
		grocerylist.Kiwi3.config,
		grocerylist.Kiwi4.config,
		grocerylist.Kiwi5.config,
		grocerylist.Kiwi6.config,
		grocerylist.Kiwi7.config,
		grocerylist.Kiwi8.config,
		grocerylist.Kiwi9.config,
		grocerylist.Kiwi10.config,
		grocerylist.Kiwi11.config,
		grocerylist.Kiwi12.config,
		grocerylist.Kiwi13.config,
		grocerylist.Kiwi14.config,
		grocerylist.Kiwi15.config,
		grocerylist.Kiwi16.config,
		grocerylist.Kiwi17.config,
		grocerylist.Kiwi18.config,
		grocerylist.Kiwi19.config,
		grocerylist.Kiwi20.config,
		grocerylist.Kiwi21.config,
		grocerylist.Kiwi22.config,
		grocerylist.Kiwi23.config,
		grocerylist.Kiwi24.config,
		grocerylist.Kiwi25.config,
		grocerylist.Kiwi26.config,
		grocerylist.Kiwi27.config,
		grocerylist.Kiwi28.config,
		grocerylist.Kiwi29.config,
		grocerylist.Kiwi30.config,
		grocerylist.Kiwi31.config,
		grocerylist.Kiwi32.config,
		grocerylist.Kiwi33.config,
		grocerylist.Kiwi34.config,
		grocerylist.Kiwi35.config,
		grocerylist.Kiwi36.config,
		grocerylist.Kiwi37.config,
		grocerylist.Kiwi38.config,
		grocerylist.Kiwi39.config,
		grocerylist.Kiwi40.config,
		grocerylist.Kiwi41.config,
		grocerylist.Kiwi42.config,
		grocerylist.Kiwi43.config,
		grocerylist.Kiwi44.config,
		grocerylist.Kiwi45.config,
		grocerylist.Kiwi46.config,
		grocerylist.Kiwi47.config,
		grocerylist.Kiwi48.config,
		grocerylist.Kiwi49.config,
		grocerylist.Kiwi50.config,
		grocerylist.Kiwi51.config,
		grocerylist.Kiwi52.config,
		grocerylist.Kiwi53.config,
		grocerylist.Kiwi54.config,
		grocerylist.Kiwi55.config,
		grocerylist.Kiwi56.config,
		grocerylist.Kiwi57.config,
		grocerylist.Kiwi58.config,
		grocerylist.Kiwi59.config,
		grocerylist.Kiwi60.config,
		grocerylist.Kiwi61.config,
		grocerylist.Kiwi62.config,
		grocerylist.Kiwi63.config,
		grocerylist.Kiwi64.config,
		grocerylist.Kiwi65.config,
		grocerylist.Kiwi66.config,
		grocerylist.Kiwi67.config,
		grocerylist.Kiwi68.config,
		grocerylist.Kiwi69.config,
		grocerylist.Kiwi70.config,
		grocerylist.Kiwi71.config,
		grocerylist.Kiwi72.config,
		grocerylist.Kiwi73.config,
		grocerylist.Kiwi74.config,
		grocerylist.Kiwi75.config,
		grocerylist.Kiwi76.config,
		grocerylist.Kiwi77.config,
		grocerylist.Kiwi78.config,
		grocerylist.Kiwi79.config,
		grocerylist.Kiwi80.config,
		grocerylist.Kiwi81.config,
		grocerylist.Kiwi82.config,
		grocerylist.Kiwi83.config,
		grocerylist.Kiwi84.config,
		grocerylist.Kiwi85.config,
		grocerylist.Kiwi86.config,
		grocerylist.Kiwi87.config,
		grocerylist.Kiwi88.config,
		grocerylist.Kiwi89.config,
		grocerylist.Kiwi90.config,
		grocerylist.Kiwi91.config,
		grocerylist.Kiwi92.config,
		grocerylist.Kiwi93.config,
		grocerylist.Kiwi94.config,
		grocerylist.Kiwi95.config,
		grocerylist.Kiwi96.config,
		grocerylist.Kiwi97.config,
		grocerylist.Kiwi98.config,
		grocerylist.Kiwi99.config,
		grocerylist.Kiwi100.config,
	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
