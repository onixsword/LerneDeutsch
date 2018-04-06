// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 2000; // obj_main
global.__objectDepths[1] = 1000; // obj_game
global.__objectDepths[2] = 0; // obj_controller
global.__objectDepths[3] = 0; // obj_snowFlake
global.__objectDepths[4] = -100; // obj_heartAttack
global.__objectDepths[5] = -100; // obj_heartAttackCr
global.__objectDepths[6] = -100; // obj_heartAttackDouble
global.__objectDepths[7] = -100; // obj_heartAttackFast
global.__objectDepths[8] = -100; // obj_flashback


global.__objectNames[0] = "obj_main";
global.__objectNames[1] = "obj_game";
global.__objectNames[2] = "obj_controller";
global.__objectNames[3] = "obj_snowFlake";
global.__objectNames[4] = "obj_heartAttack";
global.__objectNames[5] = "obj_heartAttackCr";
global.__objectNames[6] = "obj_heartAttackDouble";
global.__objectNames[7] = "obj_heartAttackFast";
global.__objectNames[8] = "obj_flashback";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for