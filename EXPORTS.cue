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
)

grocerylist_config:
	grocerylist.Apple.config + grocerylist.Banana.config + grocerylist.Lettuce.config + grocerylist.Tomato.config +
	    grocerylist.Kiwi_1.config +
		grocerylist.Kiwi_2.config +
		grocerylist.Kiwi_3.config +
		grocerylist.Kiwi_4.config +
		grocerylist.Kiwi_5.config +
		grocerylist.Kiwi_6.config +
		grocerylist.Kiwi_7.config +
		grocerylist.Kiwi_8.config +
		grocerylist.Kiwi_9.config +
		grocerylist.Kiwi_10.config +
		grocerylist.Kiwi_11.config +
		grocerylist.Kiwi_12.config +
		grocerylist.Kiwi_13.config +
		grocerylist.Kiwi_14.config +
		grocerylist.Kiwi_15.config +
		grocerylist.Kiwi_16.config +
		grocerylist.Kiwi_17.config +
		grocerylist.Kiwi_18.config +
		grocerylist.Kiwi_19.config +
		grocerylist.Kiwi_20.config +
		grocerylist.Kiwi_21.config +
		grocerylist.Kiwi_22.config +
		grocerylist.Kiwi_23.config +
		grocerylist.Kiwi_24.config +
		grocerylist.Kiwi_25.config +
		grocerylist.Kiwi_26.config +
		grocerylist.Kiwi_27.config +
		grocerylist.Kiwi_28.config +
		grocerylist.Kiwi_29.config +
		grocerylist.Kiwi_30.config +
		grocerylist.Kiwi_31.config +
		grocerylist.Kiwi_32.config +
		grocerylist.Kiwi_33.config +
		grocerylist.Kiwi_34.config +
		grocerylist.Kiwi_35.config +
		grocerylist.Kiwi_36.config +
		grocerylist.Kiwi_37.config +
		grocerylist.Kiwi_38.config +
		grocerylist.Kiwi_39.config +
		grocerylist.Kiwi_40.config +
		grocerylist.Kiwi_41.config +
		grocerylist.Kiwi_42.config +
		grocerylist.Kiwi_43.config +
		grocerylist.Kiwi_44.config +
		grocerylist.Kiwi_45.config +
		grocerylist.Kiwi_46.config +
		grocerylist.Kiwi_47.config +
		grocerylist.Kiwi_48.config +
		grocerylist.Kiwi_49.config +
		grocerylist.Kiwi_50.config +
		grocerylist.Kiwi_51.config +
		grocerylist.Kiwi_52.config +
		grocerylist.Kiwi_53.config +
		grocerylist.Kiwi_54.config +
		grocerylist.Kiwi_55.config +
		grocerylist.Kiwi_56.config +
		grocerylist.Kiwi_57.config +
		grocerylist.Kiwi_58.config +
		grocerylist.Kiwi_59.config +
		grocerylist.Kiwi_60.config +
		grocerylist.Kiwi_61.config +
		grocerylist.Kiwi_62.config +
		grocerylist.Kiwi_63.config +
		grocerylist.Kiwi_64.config +
		grocerylist.Kiwi_65.config +
		grocerylist.Kiwi_66.config +
		grocerylist.Kiwi_67.config +
		grocerylist.Kiwi_68.config +
		grocerylist.Kiwi_69.config +
		grocerylist.Kiwi_70.config +
		grocerylist.Kiwi_71.config +
		grocerylist.Kiwi_72.config +
		grocerylist.Kiwi_73.config +
		grocerylist.Kiwi_74.config +
		grocerylist.Kiwi_75.config +
		grocerylist.Kiwi_76.config +
		grocerylist.Kiwi_77.config +
		grocerylist.Kiwi_78.config +
		grocerylist.Kiwi_79.config +
		grocerylist.Kiwi_80.config +
		grocerylist.Kiwi_81.config +
		grocerylist.Kiwi_82.config +
		grocerylist.Kiwi_83.config +
		grocerylist.Kiwi_84.config +
		grocerylist.Kiwi_85.config +
		grocerylist.Kiwi_86.config +
		grocerylist.Kiwi_87.config +
		grocerylist.Kiwi_88.config +
		grocerylist.Kiwi_89.config +
		grocerylist.Kiwi_90.config +
		grocerylist.Kiwi_91.config +
		grocerylist.Kiwi_92.config +
		grocerylist.Kiwi_93.config +
		grocerylist.Kiwi_94.config +
		grocerylist.Kiwi_95.config +
		grocerylist.Kiwi_96.config +
		grocerylist.Kiwi_97.config +
		grocerylist.Kiwi_98.config +
		grocerylist.Kiwi_99.config +
		grocerylist.Kiwi_100.config
		// grocerylist.Kiwi_101.config +
		// grocerylist.Kiwi_102.config +
		// grocerylist.Kiwi_103.config +
		// grocerylist.Kiwi_104.config +
		// grocerylist.Kiwi_105.config +
		// grocerylist.Kiwi_106.config +
		// grocerylist.Kiwi_107.config +
		// grocerylist.Kiwi_108.config +
		// grocerylist.Kiwi_109.config +
		// grocerylist.Kiwi_110.config +
		// grocerylist.Kiwi_111.config +
		// grocerylist.Kiwi_112.config +
		// grocerylist.Kiwi_113.config +
		// grocerylist.Kiwi_114.config +
		// grocerylist.Kiwi_115.config +
		// grocerylist.Kiwi_116.config +
		// grocerylist.Kiwi_117.config +
		// grocerylist.Kiwi_118.config +
		// grocerylist.Kiwi_119.config +
		// grocerylist.Kiwi_120.config +
		// grocerylist.Kiwi_121.config +
		// grocerylist.Kiwi_122.config +
		// grocerylist.Kiwi_123.config +
		// grocerylist.Kiwi_124.config +
		// grocerylist.Kiwi_125.config +
		// grocerylist.Kiwi_126.config +
		// grocerylist.Kiwi_127.config +
		// grocerylist.Kiwi_128.config +
		// grocerylist.Kiwi_129.config +
		// grocerylist.Kiwi_130.config +
		// grocerylist.Kiwi_131.config +
		// grocerylist.Kiwi_132.config +
		// grocerylist.Kiwi_133.config +
		// grocerylist.Kiwi_134.config +
		// grocerylist.Kiwi_135.config +
		// grocerylist.Kiwi_136.config +
		// grocerylist.Kiwi_137.config +
		// grocerylist.Kiwi_138.config +
		// grocerylist.Kiwi_139.config +
		// grocerylist.Kiwi_140.config +
		// grocerylist.Kiwi_141.config +
		// grocerylist.Kiwi_142.config +
		// grocerylist.Kiwi_143.config +
		// grocerylist.Kiwi_144.config +
		// grocerylist.Kiwi_145.config +
		// grocerylist.Kiwi_146.config +
		// grocerylist.Kiwi_147.config +
		// grocerylist.Kiwi_148.config +
		// grocerylist.Kiwi_149.config +
		// grocerylist.Kiwi_150.config +
		// grocerylist.Kiwi_151.config +
		// grocerylist.Kiwi_152.config +
		// grocerylist.Kiwi_153.config +
		// grocerylist.Kiwi_154.config +
		// grocerylist.Kiwi_155.config +
		// grocerylist.Kiwi_156.config +
		// grocerylist.Kiwi_157.config +
		// grocerylist.Kiwi_158.config +
		// grocerylist.Kiwi_159.config +
		// grocerylist.Kiwi_160.config +
		// grocerylist.Kiwi_161.config +
		// grocerylist.Kiwi_162.config +
		// grocerylist.Kiwi_163.config +
		// grocerylist.Kiwi_164.config +
		// grocerylist.Kiwi_165.config +
		// grocerylist.Kiwi_166.config +
		// grocerylist.Kiwi_167.config +
		// grocerylist.Kiwi_168.config +
		// grocerylist.Kiwi_169.config +
		// grocerylist.Kiwi_170.config +
		// grocerylist.Kiwi_171.config +
		// grocerylist.Kiwi_172.config +
		// grocerylist.Kiwi_173.config +
		// grocerylist.Kiwi_174.config +
		// grocerylist.Kiwi_175.config +
		// grocerylist.Kiwi_176.config +
		// grocerylist.Kiwi_177.config +
		// grocerylist.Kiwi_178.config +
		// grocerylist.Kiwi_179.config +
		// grocerylist.Kiwi_180.config +
		// grocerylist.Kiwi_181.config +
		// grocerylist.Kiwi_182.config +
		// grocerylist.Kiwi_183.config +
		// grocerylist.Kiwi_184.config +
		// grocerylist.Kiwi_185.config +
		// grocerylist.Kiwi_186.config +
		// grocerylist.Kiwi_187.config +
		// grocerylist.Kiwi_188.config +
		// grocerylist.Kiwi_189.config +
		// grocerylist.Kiwi_190.config +
		// grocerylist.Kiwi_191.config +
		// grocerylist.Kiwi_192.config +
		// grocerylist.Kiwi_193.config +
		// grocerylist.Kiwi_194.config +
		// grocerylist.Kiwi_195.config +
		// grocerylist.Kiwi_196.config +
		// grocerylist.Kiwi_197.config +
		// grocerylist.Kiwi_198.config +
		// grocerylist.Kiwi_199.config +
		// grocerylist.Kiwi_200.config +
		// grocerylist.Kiwi_201.config +
		// grocerylist.Kiwi_202.config +
		// grocerylist.Kiwi_203.config +
		// grocerylist.Kiwi_204.config +
		// grocerylist.Kiwi_205.config +
		// grocerylist.Kiwi_206.config +
		// grocerylist.Kiwi_207.config +
		// grocerylist.Kiwi_208.config +
		// grocerylist.Kiwi_209.config +
		// grocerylist.Kiwi_210.config +
		// grocerylist.Kiwi_211.config +
		// grocerylist.Kiwi_212.config +
		// grocerylist.Kiwi_213.config +
		// grocerylist.Kiwi_214.config +
		// grocerylist.Kiwi_215.config +
		// grocerylist.Kiwi_216.config +
		// grocerylist.Kiwi_217.config +
		// grocerylist.Kiwi_218.config +
		// grocerylist.Kiwi_219.config +
		// grocerylist.Kiwi_220.config +
		// grocerylist.Kiwi_221.config +
		// grocerylist.Kiwi_222.config +
		// grocerylist.Kiwi_223.config +
		// grocerylist.Kiwi_224.config +
		// grocerylist.Kiwi_225.config +
		// grocerylist.Kiwi_226.config +
		// grocerylist.Kiwi_227.config +
		// grocerylist.Kiwi_228.config +
		// grocerylist.Kiwi_229.config +
		// grocerylist.Kiwi_230.config +
		// grocerylist.Kiwi_231.config +
		// grocerylist.Kiwi_232.config +
		// grocerylist.Kiwi_233.config +
		// grocerylist.Kiwi_234.config +
		// grocerylist.Kiwi_235.config +
		// grocerylist.Kiwi_236.config +
		// grocerylist.Kiwi_237.config +
		// grocerylist.Kiwi_238.config +
		// grocerylist.Kiwi_239.config +
		// grocerylist.Kiwi_240.config +
		// grocerylist.Kiwi_241.config +
		// grocerylist.Kiwi_242.config +
		// grocerylist.Kiwi_243.config +
		// grocerylist.Kiwi_244.config +
		// grocerylist.Kiwi_245.config +
		// grocerylist.Kiwi_246.config +
		// grocerylist.Kiwi_247.config +
		// grocerylist.Kiwi_248.config +
		// grocerylist.Kiwi_249.config +
		// grocerylist.Kiwi_250.config +
		// grocerylist.Kiwi_251.config +
		// grocerylist.Kiwi_252.config +
		// grocerylist.Kiwi_253.config +
		// grocerylist.Kiwi_254.config +
		// grocerylist.Kiwi_255.config +
		// grocerylist.Kiwi_256.config +
		// grocerylist.Kiwi_257.config +
		// grocerylist.Kiwi_258.config +
		// grocerylist.Kiwi_259.config +
		// grocerylist.Kiwi_260.config +
		// grocerylist.Kiwi_261.config +
		// grocerylist.Kiwi_262.config +
		// grocerylist.Kiwi_263.config +
		// grocerylist.Kiwi_264.config +
		// grocerylist.Kiwi_265.config +
		// grocerylist.Kiwi_266.config +
		// grocerylist.Kiwi_267.config +
		// grocerylist.Kiwi_268.config +
		// grocerylist.Kiwi_269.config +
		// grocerylist.Kiwi_270.config +
		// grocerylist.Kiwi_271.config +
		// grocerylist.Kiwi_272.config +
		// grocerylist.Kiwi_273.config +
		// grocerylist.Kiwi_274.config +
		// grocerylist.Kiwi_275.config +
		// grocerylist.Kiwi_276.config +
		// grocerylist.Kiwi_277.config +
		// grocerylist.Kiwi_278.config +
		// grocerylist.Kiwi_279.config +
		// grocerylist.Kiwi_280.config +
		// grocerylist.Kiwi_281.config +
		// grocerylist.Kiwi_282.config +
		// grocerylist.Kiwi_283.config +
		// grocerylist.Kiwi_284.config +
		// grocerylist.Kiwi_285.config +
		// grocerylist.Kiwi_286.config +
		// grocerylist.Kiwi_287.config +
		// grocerylist.Kiwi_288.config +
		// grocerylist.Kiwi_289.config +
		// grocerylist.Kiwi_290.config +
		// grocerylist.Kiwi_291.config +
		// grocerylist.Kiwi_292.config +
		// grocerylist.Kiwi_293.config +
		// grocerylist.Kiwi_294.config +
		// grocerylist.Kiwi_295.config +
		// grocerylist.Kiwi_296.config +
		// grocerylist.Kiwi_297.config +
		// grocerylist.Kiwi_298.config +
		// grocerylist.Kiwi_299.config +
		// grocerylist.Kiwi_300.config +
		// grocerylist.Kiwi_301.config +
		// grocerylist.Kiwi_302.config +
		// grocerylist.Kiwi_303.config +
		// grocerylist.Kiwi_304.config +
		// grocerylist.Kiwi_305.config +
		// grocerylist.Kiwi_306.config +
		// grocerylist.Kiwi_307.config +
		// grocerylist.Kiwi_308.config +
		// grocerylist.Kiwi_309.config +
		// grocerylist.Kiwi_310.config +
		// grocerylist.Kiwi_311.config +
		// grocerylist.Kiwi_312.config +
		// grocerylist.Kiwi_313.config +
		// grocerylist.Kiwi_314.config +
		// grocerylist.Kiwi_315.config +
		// grocerylist.Kiwi_316.config +
		// grocerylist.Kiwi_317.config +
		// grocerylist.Kiwi_318.config +
		// grocerylist.Kiwi_319.config +
		// grocerylist.Kiwi_320.config +
		// grocerylist.Kiwi_321.config +
		// grocerylist.Kiwi_322.config +
		// grocerylist.Kiwi_323.config +
		// grocerylist.Kiwi_324.config +
		// grocerylist.Kiwi_325.config +
		// grocerylist.Kiwi_326.config +
		// grocerylist.Kiwi_327.config +
		// grocerylist.Kiwi_328.config +
		// grocerylist.Kiwi_329.config +
		// grocerylist.Kiwi_330.config +
		// grocerylist.Kiwi_331.config +
		// grocerylist.Kiwi_332.config +
		// grocerylist.Kiwi_333.config +
		// grocerylist.Kiwi_334.config +
		// grocerylist.Kiwi_335.config +
		// grocerylist.Kiwi_336.config +
		// grocerylist.Kiwi_337.config +
		// grocerylist.Kiwi_338.config +
		// grocerylist.Kiwi_339.config +
		// grocerylist.Kiwi_340.config +
		// grocerylist.Kiwi_341.config +
		// grocerylist.Kiwi_342.config +
		// grocerylist.Kiwi_343.config +
		// grocerylist.Kiwi_344.config +
		// grocerylist.Kiwi_345.config +
		// grocerylist.Kiwi_346.config +
		// grocerylist.Kiwi_347.config +
		// grocerylist.Kiwi_348.config +
		// grocerylist.Kiwi_349.config +
		// grocerylist.Kiwi_350.config +
		// grocerylist.Kiwi_351.config +
		// grocerylist.Kiwi_352.config +
		// grocerylist.Kiwi_353.config +
		// grocerylist.Kiwi_354.config +
		// grocerylist.Kiwi_355.config +
		// grocerylist.Kiwi_356.config +
		// grocerylist.Kiwi_357.config +
		// grocerylist.Kiwi_358.config +
		// grocerylist.Kiwi_359.config +
		// grocerylist.Kiwi_360.config +
		// grocerylist.Kiwi_361.config +
		// grocerylist.Kiwi_362.config +
		// grocerylist.Kiwi_363.config +
		// grocerylist.Kiwi_364.config +
		// grocerylist.Kiwi_365.config +
		// grocerylist.Kiwi_366.config +
		// grocerylist.Kiwi_367.config +
		// grocerylist.Kiwi_368.config +
		// grocerylist.Kiwi_369.config +
		// grocerylist.Kiwi_370.config +
		// grocerylist.Kiwi_371.config +
		// grocerylist.Kiwi_372.config +
		// grocerylist.Kiwi_373.config +
		// grocerylist.Kiwi_374.config +
		// grocerylist.Kiwi_375.config +
		// grocerylist.Kiwi_376.config +
		// grocerylist.Kiwi_377.config +
		// grocerylist.Kiwi_378.config +
		// grocerylist.Kiwi_379.config +
		// grocerylist.Kiwi_380.config +
		// grocerylist.Kiwi_381.config +
		// grocerylist.Kiwi_382.config +
		// grocerylist.Kiwi_383.config +
		// grocerylist.Kiwi_384.config +
		// grocerylist.Kiwi_385.config +
		// grocerylist.Kiwi_386.config +
		// grocerylist.Kiwi_387.config +
		// grocerylist.Kiwi_388.config +
		// grocerylist.Kiwi_389.config +
		// grocerylist.Kiwi_390.config +
		// grocerylist.Kiwi_391.config +
		// grocerylist.Kiwi_392.config +
		// grocerylist.Kiwi_393.config +
		// grocerylist.Kiwi_394.config +
		// grocerylist.Kiwi_395.config +
		// grocerylist.Kiwi_396.config +
		// grocerylist.Kiwi_397.config +
		// grocerylist.Kiwi_398.config +
		// grocerylist.Kiwi_399.config +
		// grocerylist.Kiwi_400.config +
		// grocerylist.Kiwi_401.config +
		// grocerylist.Kiwi_402.config +
		// grocerylist.Kiwi_403.config +
		// grocerylist.Kiwi_404.config +
		// grocerylist.Kiwi_405.config +
		// grocerylist.Kiwi_406.config +
		// grocerylist.Kiwi_407.config +
		// grocerylist.Kiwi_408.config +
		// grocerylist.Kiwi_409.config +
		// grocerylist.Kiwi_410.config +
		// grocerylist.Kiwi_411.config +
		// grocerylist.Kiwi_412.config +
		// grocerylist.Kiwi_413.config +
		// grocerylist.Kiwi_414.config +
		// grocerylist.Kiwi_415.config +
		// grocerylist.Kiwi_416.config +
		// grocerylist.Kiwi_417.config +
		// grocerylist.Kiwi_418.config +
		// grocerylist.Kiwi_419.config +
		// grocerylist.Kiwi_420.config +
		// grocerylist.Kiwi_421.config +
		// grocerylist.Kiwi_422.config +
		// grocerylist.Kiwi_423.config +
		// grocerylist.Kiwi_424.config +
		// grocerylist.Kiwi_425.config +
		// grocerylist.Kiwi_426.config +
		// grocerylist.Kiwi_427.config +
		// grocerylist.Kiwi_428.config +
		// grocerylist.Kiwi_429.config +
		// grocerylist.Kiwi_430.config +
		// grocerylist.Kiwi_431.config +
		// grocerylist.Kiwi_432.config +
		// grocerylist.Kiwi_433.config +
		// grocerylist.Kiwi_434.config +
		// grocerylist.Kiwi_435.config +
		// grocerylist.Kiwi_436.config +
		// grocerylist.Kiwi_437.config +
		// grocerylist.Kiwi_438.config +
		// grocerylist.Kiwi_439.config +
		// grocerylist.Kiwi_440.config +
		// grocerylist.Kiwi_441.config +
		// grocerylist.Kiwi_442.config +
		// grocerylist.Kiwi_443.config +
		// grocerylist.Kiwi_444.config +
		// grocerylist.Kiwi_445.config +
		// grocerylist.Kiwi_446.config +
		// grocerylist.Kiwi_447.config +
		// grocerylist.Kiwi_448.config +
		// grocerylist.Kiwi_449.config +
		// grocerylist.Kiwi_450.config +
		// grocerylist.Kiwi_451.config +
		// grocerylist.Kiwi_452.config +
		// grocerylist.Kiwi_453.config +
		// grocerylist.Kiwi_454.config +
		// grocerylist.Kiwi_455.config +
		// grocerylist.Kiwi_456.config +
		// grocerylist.Kiwi_457.config +
		// grocerylist.Kiwi_458.config +
		// grocerylist.Kiwi_459.config +
		// grocerylist.Kiwi_460.config +
		// grocerylist.Kiwi_461.config +
		// grocerylist.Kiwi_462.config +
		// grocerylist.Kiwi_463.config +
		// grocerylist.Kiwi_464.config +
		// grocerylist.Kiwi_465.config +
		// grocerylist.Kiwi_466.config +
		// grocerylist.Kiwi_467.config +
		// grocerylist.Kiwi_468.config +
		// grocerylist.Kiwi_469.config +
		// grocerylist.Kiwi_470.config +
		// grocerylist.Kiwi_471.config +
		// grocerylist.Kiwi_472.config +
		// grocerylist.Kiwi_473.config +
		// grocerylist.Kiwi_474.config +
		// grocerylist.Kiwi_475.config +
		// grocerylist.Kiwi_476.config +
		// grocerylist.Kiwi_477.config +
		// grocerylist.Kiwi_478.config +
		// grocerylist.Kiwi_479.config +
		// grocerylist.Kiwi_480.config +
		// grocerylist.Kiwi_481.config +
		// grocerylist.Kiwi_482.config +
		// grocerylist.Kiwi_483.config +
		// grocerylist.Kiwi_484.config +
		// grocerylist.Kiwi_485.config +
		// grocerylist.Kiwi_486.config +
		// grocerylist.Kiwi_487.config +
		// grocerylist.Kiwi_488.config +
		// grocerylist.Kiwi_489.config +
		// grocerylist.Kiwi_490.config +
		// grocerylist.Kiwi_491.config +
		// grocerylist.Kiwi_492.config +
		// grocerylist.Kiwi_493.config +
		// grocerylist.Kiwi_494.config +
		// grocerylist.Kiwi_495.config +
		// grocerylist.Kiwi_496.config +
		// grocerylist.Kiwi_497.config +
		// grocerylist.Kiwi_498.config +
		// grocerylist.Kiwi_499.config +
		// grocerylist.Kiwi_500.config +
		// grocerylist.Kiwi_501.config +
		// grocerylist.Kiwi_502.config +
		// grocerylist.Kiwi_503.config +
		// grocerylist.Kiwi_504.config +
		// grocerylist.Kiwi_505.config +
		// grocerylist.Kiwi_506.config +
		// grocerylist.Kiwi_507.config +
		// grocerylist.Kiwi_508.config +
		// grocerylist.Kiwi_509.config +
		// grocerylist.Kiwi_510.config +
		// grocerylist.Kiwi_511.config +
		// grocerylist.Kiwi_512.config +
		// grocerylist.Kiwi_513.config +
		// grocerylist.Kiwi_514.config +
		// grocerylist.Kiwi_515.config +
		// grocerylist.Kiwi_516.config +
		// grocerylist.Kiwi_517.config +
		// grocerylist.Kiwi_518.config +
		// grocerylist.Kiwi_519.config +
		// grocerylist.Kiwi_520.config +
		// grocerylist.Kiwi_521.config +
		// grocerylist.Kiwi_522.config +
		// grocerylist.Kiwi_523.config +
		// grocerylist.Kiwi_524.config +
		// grocerylist.Kiwi_525.config +
		// grocerylist.Kiwi_526.config +
		// grocerylist.Kiwi_527.config +
		// grocerylist.Kiwi_528.config +
		// grocerylist.Kiwi_529.config +
		// grocerylist.Kiwi_530.config +
		// grocerylist.Kiwi_531.config +
		// grocerylist.Kiwi_532.config +
		// grocerylist.Kiwi_533.config +
		// grocerylist.Kiwi_534.config +
		// grocerylist.Kiwi_535.config +
		// grocerylist.Kiwi_536.config +
		// grocerylist.Kiwi_537.config +
		// grocerylist.Kiwi_538.config +
		// grocerylist.Kiwi_539.config +
		// grocerylist.Kiwi_540.config +
		// grocerylist.Kiwi_541.config +
		// grocerylist.Kiwi_542.config +
		// grocerylist.Kiwi_543.config +
		// grocerylist.Kiwi_544.config +
		// grocerylist.Kiwi_545.config +
		// grocerylist.Kiwi_546.config +
		// grocerylist.Kiwi_547.config +
		// grocerylist.Kiwi_548.config +
		// grocerylist.Kiwi_549.config +
		// grocerylist.Kiwi_550.config +
		// grocerylist.Kiwi_551.config +
		// grocerylist.Kiwi_552.config +
		// grocerylist.Kiwi_553.config +
		// grocerylist.Kiwi_554.config +
		// grocerylist.Kiwi_555.config +
		// grocerylist.Kiwi_556.config +
		// grocerylist.Kiwi_557.config +
		// grocerylist.Kiwi_558.config +
		// grocerylist.Kiwi_559.config +
		// grocerylist.Kiwi_560.config +
		// grocerylist.Kiwi_561.config +
		// grocerylist.Kiwi_562.config +
		// grocerylist.Kiwi_563.config +
		// grocerylist.Kiwi_564.config +
		// grocerylist.Kiwi_565.config +
		// grocerylist.Kiwi_566.config +
		// grocerylist.Kiwi_567.config +
		// grocerylist.Kiwi_568.config +
		// grocerylist.Kiwi_569.config +
		// grocerylist.Kiwi_570.config +
		// grocerylist.Kiwi_571.config +
		// grocerylist.Kiwi_572.config +
		// grocerylist.Kiwi_573.config +
		// grocerylist.Kiwi_574.config +
		// grocerylist.Kiwi_575.config +
		// grocerylist.Kiwi_576.config +
		// grocerylist.Kiwi_577.config +
		// grocerylist.Kiwi_578.config +
		// grocerylist.Kiwi_579.config +
		// grocerylist.Kiwi_580.config +
		// grocerylist.Kiwi_581.config +
		// grocerylist.Kiwi_582.config +
		// grocerylist.Kiwi_583.config +
		// grocerylist.Kiwi_584.config +
		// grocerylist.Kiwi_585.config +
		// grocerylist.Kiwi_586.config +
		// grocerylist.Kiwi_587.config +
		// grocerylist.Kiwi_588.config +
		// grocerylist.Kiwi_589.config +
		// grocerylist.Kiwi_590.config +
		// grocerylist.Kiwi_591.config +
		// grocerylist.Kiwi_592.config +
		// grocerylist.Kiwi_593.config +
		// grocerylist.Kiwi_594.config +
		// grocerylist.Kiwi_595.config +
		// grocerylist.Kiwi_596.config +
		// grocerylist.Kiwi_597.config +
		// grocerylist.Kiwi_598.config +
		// grocerylist.Kiwi_599.config +
		// grocerylist.Kiwi_600.config +
		// grocerylist.Kiwi_601.config +
		// grocerylist.Kiwi_602.config +
		// grocerylist.Kiwi_603.config +
		// grocerylist.Kiwi_604.config +
		// grocerylist.Kiwi_605.config +
		// grocerylist.Kiwi_606.config +
		// grocerylist.Kiwi_607.config +
		// grocerylist.Kiwi_608.config +
		// grocerylist.Kiwi_609.config +
		// grocerylist.Kiwi_610.config +
		// grocerylist.Kiwi_611.config +
		// grocerylist.Kiwi_612.config +
		// grocerylist.Kiwi_613.config +
		// grocerylist.Kiwi_614.config +
		// grocerylist.Kiwi_615.config +
		// grocerylist.Kiwi_616.config +
		// grocerylist.Kiwi_617.config +
		// grocerylist.Kiwi_618.config +
		// grocerylist.Kiwi_619.config +
		// grocerylist.Kiwi_620.config +
		// grocerylist.Kiwi_621.config +
		// grocerylist.Kiwi_622.config +
		// grocerylist.Kiwi_623.config +
		// grocerylist.Kiwi_624.config +
		// grocerylist.Kiwi_625.config +
		// grocerylist.Kiwi_626.config +
		// grocerylist.Kiwi_627.config +
		// grocerylist.Kiwi_628.config +
		// grocerylist.Kiwi_629.config +
		// grocerylist.Kiwi_630.config +
		// grocerylist.Kiwi_631.config +
		// grocerylist.Kiwi_632.config +
		// grocerylist.Kiwi_633.config +
		// grocerylist.Kiwi_634.config +
		// grocerylist.Kiwi_635.config +
		// grocerylist.Kiwi_636.config +
		// grocerylist.Kiwi_637.config +
		// grocerylist.Kiwi_638.config +
		// grocerylist.Kiwi_639.config +
		// grocerylist.Kiwi_640.config +
		// grocerylist.Kiwi_641.config +
		// grocerylist.Kiwi_642.config +
		// grocerylist.Kiwi_643.config +
		// grocerylist.Kiwi_644.config +
		// grocerylist.Kiwi_645.config +
		// grocerylist.Kiwi_646.config +
		// grocerylist.Kiwi_647.config +
		// grocerylist.Kiwi_648.config +
		// grocerylist.Kiwi_649.config +
		// grocerylist.Kiwi_650.config +
		// grocerylist.Kiwi_651.config +
		// grocerylist.Kiwi_652.config +
		// grocerylist.Kiwi_653.config +
		// grocerylist.Kiwi_654.config +
		// grocerylist.Kiwi_655.config +
		// grocerylist.Kiwi_656.config +
		// grocerylist.Kiwi_657.config +
		// grocerylist.Kiwi_658.config +
		// grocerylist.Kiwi_659.config +
		// grocerylist.Kiwi_660.config +
		// grocerylist.Kiwi_661.config +
		// grocerylist.Kiwi_662.config +
		// grocerylist.Kiwi_663.config +
		// grocerylist.Kiwi_664.config +
		// grocerylist.Kiwi_665.config +
		// grocerylist.Kiwi_666.config +
		// grocerylist.Kiwi_667.config +
		// grocerylist.Kiwi_668.config +
		// grocerylist.Kiwi_669.config +
		// grocerylist.Kiwi_670.config +
		// grocerylist.Kiwi_671.config +
		// grocerylist.Kiwi_672.config +
		// grocerylist.Kiwi_673.config +
		// grocerylist.Kiwi_674.config +
		// grocerylist.Kiwi_675.config +
		// grocerylist.Kiwi_676.config +
		// grocerylist.Kiwi_677.config +
		// grocerylist.Kiwi_678.config +
		// grocerylist.Kiwi_679.config +
		// grocerylist.Kiwi_680.config +
		// grocerylist.Kiwi_681.config +
		// grocerylist.Kiwi_682.config +
		// grocerylist.Kiwi_683.config +
		// grocerylist.Kiwi_684.config +
		// grocerylist.Kiwi_685.config +
		// grocerylist.Kiwi_686.config +
		// grocerylist.Kiwi_687.config +
		// grocerylist.Kiwi_688.config +
		// grocerylist.Kiwi_689.config +
		// grocerylist.Kiwi_690.config +
		// grocerylist.Kiwi_691.config +
		// grocerylist.Kiwi_692.config +
		// grocerylist.Kiwi_693.config +
		// grocerylist.Kiwi_694.config +
		// grocerylist.Kiwi_695.config +
		// grocerylist.Kiwi_696.config +
		// grocerylist.Kiwi_697.config +
		// grocerylist.Kiwi_698.config +
		// grocerylist.Kiwi_699.config +
		// grocerylist.Kiwi_700.config +
		// grocerylist.Kiwi_701.config +
		// grocerylist.Kiwi_702.config +
		// grocerylist.Kiwi_703.config +
		// grocerylist.Kiwi_704.config +
		// grocerylist.Kiwi_705.config +
		// grocerylist.Kiwi_706.config +
		// grocerylist.Kiwi_707.config +
		// grocerylist.Kiwi_708.config +
		// grocerylist.Kiwi_709.config +
		// grocerylist.Kiwi_710.config +
		// grocerylist.Kiwi_711.config +
		// grocerylist.Kiwi_712.config +
		// grocerylist.Kiwi_713.config +
		// grocerylist.Kiwi_714.config +
		// grocerylist.Kiwi_715.config +
		// grocerylist.Kiwi_716.config +
		// grocerylist.Kiwi_717.config +
		// grocerylist.Kiwi_718.config +
		// grocerylist.Kiwi_719.config +
		// grocerylist.Kiwi_720.config +
		// grocerylist.Kiwi_721.config +
		// grocerylist.Kiwi_722.config +
		// grocerylist.Kiwi_723.config +
		// grocerylist.Kiwi_724.config +
		// grocerylist.Kiwi_725.config +
		// grocerylist.Kiwi_726.config +
		// grocerylist.Kiwi_727.config +
		// grocerylist.Kiwi_728.config +
		// grocerylist.Kiwi_729.config +
		// grocerylist.Kiwi_730.config +
		// grocerylist.Kiwi_731.config +
		// grocerylist.Kiwi_732.config +
		// grocerylist.Kiwi_733.config +
		// grocerylist.Kiwi_734.config +
		// grocerylist.Kiwi_735.config +
		// grocerylist.Kiwi_736.config +
		// grocerylist.Kiwi_737.config +
		// grocerylist.Kiwi_738.config +
		// grocerylist.Kiwi_739.config +
		// grocerylist.Kiwi_740.config +
		// grocerylist.Kiwi_741.config +
		// grocerylist.Kiwi_742.config +
		// grocerylist.Kiwi_743.config +
		// grocerylist.Kiwi_744.config +
		// grocerylist.Kiwi_745.config +
		// grocerylist.Kiwi_746.config +
		// grocerylist.Kiwi_747.config +
		// grocerylist.Kiwi_748.config +
		// grocerylist.Kiwi_749.config +
		// grocerylist.Kiwi_750.config +
		// grocerylist.Kiwi_751.config +
		// grocerylist.Kiwi_752.config +
		// grocerylist.Kiwi_753.config +
		// grocerylist.Kiwi_754.config +
		// grocerylist.Kiwi_755.config +
		// grocerylist.Kiwi_756.config +
		// grocerylist.Kiwi_757.config +
		// grocerylist.Kiwi_758.config +
		// grocerylist.Kiwi_759.config +
		// grocerylist.Kiwi_760.config +
		// grocerylist.Kiwi_761.config +
		// grocerylist.Kiwi_762.config +
		// grocerylist.Kiwi_763.config +
		// grocerylist.Kiwi_764.config +
		// grocerylist.Kiwi_765.config +
		// grocerylist.Kiwi_766.config +
		// grocerylist.Kiwi_767.config +
		// grocerylist.Kiwi_768.config +
		// grocerylist.Kiwi_769.config +
		// grocerylist.Kiwi_770.config +
		// grocerylist.Kiwi_771.config +
		// grocerylist.Kiwi_772.config +
		// grocerylist.Kiwi_773.config +
		// grocerylist.Kiwi_774.config +
		// grocerylist.Kiwi_775.config +
		// grocerylist.Kiwi_776.config +
		// grocerylist.Kiwi_777.config +
		// grocerylist.Kiwi_778.config +
		// grocerylist.Kiwi_779.config +
		// grocerylist.Kiwi_780.config +
		// grocerylist.Kiwi_781.config +
		// grocerylist.Kiwi_782.config +
		// grocerylist.Kiwi_783.config +
		// grocerylist.Kiwi_784.config +
		// grocerylist.Kiwi_785.config +
		// grocerylist.Kiwi_786.config +
		// grocerylist.Kiwi_787.config +
		// grocerylist.Kiwi_788.config +
		// grocerylist.Kiwi_789.config +
		// grocerylist.Kiwi_790.config +
		// grocerylist.Kiwi_791.config +
		// grocerylist.Kiwi_792.config +
		// grocerylist.Kiwi_793.config +
		// grocerylist.Kiwi_794.config +
		// grocerylist.Kiwi_795.config +
		// grocerylist.Kiwi_796.config +
		// grocerylist.Kiwi_797.config +
		// grocerylist.Kiwi_798.config +
		// grocerylist.Kiwi_799.config +
		// grocerylist.Kiwi_800.config +
		// grocerylist.Kiwi_801.config +
		// grocerylist.Kiwi_802.config +
		// grocerylist.Kiwi_803.config +
		// grocerylist.Kiwi_804.config +
		// grocerylist.Kiwi_805.config +
		// grocerylist.Kiwi_806.config +
		// grocerylist.Kiwi_807.config +
		// grocerylist.Kiwi_808.config +
		// grocerylist.Kiwi_809.config +
		// grocerylist.Kiwi_810.config +
		// grocerylist.Kiwi_811.config +
		// grocerylist.Kiwi_812.config +
		// grocerylist.Kiwi_813.config +
		// grocerylist.Kiwi_814.config +
		// grocerylist.Kiwi_815.config +
		// grocerylist.Kiwi_816.config +
		// grocerylist.Kiwi_817.config +
		// grocerylist.Kiwi_818.config +
		// grocerylist.Kiwi_819.config +
		// grocerylist.Kiwi_820.config +
		// grocerylist.Kiwi_821.config +
		// grocerylist.Kiwi_822.config +
		// grocerylist.Kiwi_823.config +
		// grocerylist.Kiwi_824.config +
		// grocerylist.Kiwi_825.config +
		// grocerylist.Kiwi_826.config +
		// grocerylist.Kiwi_827.config +
		// grocerylist.Kiwi_828.config +
		// grocerylist.Kiwi_829.config +
		// grocerylist.Kiwi_830.config +
		// grocerylist.Kiwi_831.config +
		// grocerylist.Kiwi_832.config +
		// grocerylist.Kiwi_833.config +
		// grocerylist.Kiwi_834.config +
		// grocerylist.Kiwi_835.config +
		// grocerylist.Kiwi_836.config +
		// grocerylist.Kiwi_837.config +
		// grocerylist.Kiwi_838.config +
		// grocerylist.Kiwi_839.config +
		// grocerylist.Kiwi_840.config +
		// grocerylist.Kiwi_841.config +
		// grocerylist.Kiwi_842.config +
		// grocerylist.Kiwi_843.config +
		// grocerylist.Kiwi_844.config +
		// grocerylist.Kiwi_845.config +
		// grocerylist.Kiwi_846.config +
		// grocerylist.Kiwi_847.config +
		// grocerylist.Kiwi_848.config +
		// grocerylist.Kiwi_849.config +
		// grocerylist.Kiwi_850.config +
		// grocerylist.Kiwi_851.config +
		// grocerylist.Kiwi_852.config +
		// grocerylist.Kiwi_853.config +
		// grocerylist.Kiwi_854.config +
		// grocerylist.Kiwi_855.config +
		// grocerylist.Kiwi_856.config +
		// grocerylist.Kiwi_857.config +
		// grocerylist.Kiwi_858.config +
		// grocerylist.Kiwi_859.config +
		// grocerylist.Kiwi_860.config +
		// grocerylist.Kiwi_861.config +
		// grocerylist.Kiwi_862.config +
		// grocerylist.Kiwi_863.config +
		// grocerylist.Kiwi_864.config +
		// grocerylist.Kiwi_865.config +
		// grocerylist.Kiwi_866.config +
		// grocerylist.Kiwi_867.config +
		// grocerylist.Kiwi_868.config +
		// grocerylist.Kiwi_869.config +
		// grocerylist.Kiwi_870.config +
		// grocerylist.Kiwi_871.config +
		// grocerylist.Kiwi_872.config +
		// grocerylist.Kiwi_873.config +
		// grocerylist.Kiwi_874.config +
		// grocerylist.Kiwi_875.config +
		// grocerylist.Kiwi_876.config +
		// grocerylist.Kiwi_877.config +
		// grocerylist.Kiwi_878.config +
		// grocerylist.Kiwi_879.config +
		// grocerylist.Kiwi_880.config +
		// grocerylist.Kiwi_881.config +
		// grocerylist.Kiwi_882.config +
		// grocerylist.Kiwi_883.config +
		// grocerylist.Kiwi_884.config +
		// grocerylist.Kiwi_885.config +
		// grocerylist.Kiwi_886.config +
		// grocerylist.Kiwi_887.config +
		// grocerylist.Kiwi_888.config +
		// grocerylist.Kiwi_889.config +
		// grocerylist.Kiwi_890.config +
		// grocerylist.Kiwi_891.config +
		// grocerylist.Kiwi_892.config +
		// grocerylist.Kiwi_893.config +
		// grocerylist.Kiwi_894.config +
		// grocerylist.Kiwi_895.config +
		// grocerylist.Kiwi_896.config +
		// grocerylist.Kiwi_897.config +
		// grocerylist.Kiwi_898.config +
		// grocerylist.Kiwi_899.config +
		// grocerylist.Kiwi_900.config +
		// grocerylist.Kiwi_901.config +
		// grocerylist.Kiwi_902.config +
		// grocerylist.Kiwi_903.config +
		// grocerylist.Kiwi_904.config +
		// grocerylist.Kiwi_905.config +
		// grocerylist.Kiwi_906.config +
		// grocerylist.Kiwi_907.config +
		// grocerylist.Kiwi_908.config +
		// grocerylist.Kiwi_909.config +
		// grocerylist.Kiwi_910.config +
		// grocerylist.Kiwi_911.config +
		// grocerylist.Kiwi_912.config +
		// grocerylist.Kiwi_913.config +
		// grocerylist.Kiwi_914.config +
		// grocerylist.Kiwi_915.config +
		// grocerylist.Kiwi_916.config +
		// grocerylist.Kiwi_917.config +
		// grocerylist.Kiwi_918.config +
		// grocerylist.Kiwi_919.config +
		// grocerylist.Kiwi_920.config +
		// grocerylist.Kiwi_921.config +
		// grocerylist.Kiwi_922.config +
		// grocerylist.Kiwi_923.config +
		// grocerylist.Kiwi_924.config +
		// grocerylist.Kiwi_925.config +
		// grocerylist.Kiwi_926.config +
		// grocerylist.Kiwi_927.config +
		// grocerylist.Kiwi_928.config +
		// grocerylist.Kiwi_929.config +
		// grocerylist.Kiwi_930.config +
		// grocerylist.Kiwi_931.config +
		// grocerylist.Kiwi_932.config +
		// grocerylist.Kiwi_933.config +
		// grocerylist.Kiwi_934.config +
		// grocerylist.Kiwi_935.config +
		// grocerylist.Kiwi_936.config +
		// grocerylist.Kiwi_937.config +
		// grocerylist.Kiwi_938.config +
		// grocerylist.Kiwi_939.config +
		// grocerylist.Kiwi_940.config +
		// grocerylist.Kiwi_941.config +
		// grocerylist.Kiwi_942.config +
		// grocerylist.Kiwi_943.config +
		// grocerylist.Kiwi_944.config +
		// grocerylist.Kiwi_945.config +
		// grocerylist.Kiwi_946.config +
		// grocerylist.Kiwi_947.config +
		// grocerylist.Kiwi_948.config +
		// grocerylist.Kiwi_949.config +
		// grocerylist.Kiwi_950.config +
		// grocerylist.Kiwi_951.config +
		// grocerylist.Kiwi_952.config +
		// grocerylist.Kiwi_953.config +
		// grocerylist.Kiwi_954.config +
		// grocerylist.Kiwi_955.config +
		// grocerylist.Kiwi_956.config +
		// grocerylist.Kiwi_957.config +
		// grocerylist.Kiwi_958.config +
		// grocerylist.Kiwi_959.config +
		// grocerylist.Kiwi_960.config +
		// grocerylist.Kiwi_961.config +
		// grocerylist.Kiwi_962.config +
		// grocerylist.Kiwi_963.config +
		// grocerylist.Kiwi_964.config +
		// grocerylist.Kiwi_965.config +
		// grocerylist.Kiwi_966.config +
		// grocerylist.Kiwi_967.config +
		// grocerylist.Kiwi_968.config +
		// grocerylist.Kiwi_969.config +
		// grocerylist.Kiwi_970.config +
		// grocerylist.Kiwi_971.config +
		// grocerylist.Kiwi_972.config +
		// grocerylist.Kiwi_973.config +
		// grocerylist.Kiwi_974.config +
		// grocerylist.Kiwi_975.config +
		// grocerylist.Kiwi_976.config +
		// grocerylist.Kiwi_977.config +
		// grocerylist.Kiwi_978.config +
		// grocerylist.Kiwi_979.config +
		// grocerylist.Kiwi_980.config +
		// grocerylist.Kiwi_981.config +
		// grocerylist.Kiwi_982.config +
		// grocerylist.Kiwi_983.config +
		// grocerylist.Kiwi_984.config +
		// grocerylist.Kiwi_985.config +
		// grocerylist.Kiwi_986.config +
		// grocerylist.Kiwi_987.config +
		// grocerylist.Kiwi_988.config +
		// grocerylist.Kiwi_989.config +
		// grocerylist.Kiwi_990.config +
		// grocerylist.Kiwi_991.config +
		// grocerylist.Kiwi_992.config +
		// grocerylist.Kiwi_993.config +
		// grocerylist.Kiwi_994.config +
		// grocerylist.Kiwi_995.config +
		// grocerylist.Kiwi_996.config +
		// grocerylist.Kiwi_997.config +
		// grocerylist.Kiwi_998.config +
		// grocerylist.Kiwi_999.config +
		// grocerylist.Kiwi_1000.config

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + grocerylist_config
