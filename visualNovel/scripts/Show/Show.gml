/// @description Show(time, character 1, character 2, ...)
/// @param time
/// @param  character 1
/// @param  character 2
/// @param  ...
global.step[global.write, 31] = argument[0];
global.step[global.write, 32] = argument[1];
if(argument_count >= 3)global.step[global.write, 33] = argument[2];
if(argument_count >= 4)global.step[global.write, 34] = argument[3];
if(argument_count >= 5)global.step[global.write, 35] = argument[4];
