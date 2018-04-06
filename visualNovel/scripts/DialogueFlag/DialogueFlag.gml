/// @description DialogueFlag(flag ID, flag value, actor ID, text)
/// @param flag ID
/// @param  flag value
/// @param  actor ID
/// @param  text
global.write++; 
global.step[global.write, 0] = argument3;
global.step[global.write, 1] = argument2;
global.step[global.write, 43] = argument0;
global.step[global.write, 44] = argument1;
