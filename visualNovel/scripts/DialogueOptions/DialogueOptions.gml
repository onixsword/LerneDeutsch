/// @description DialogueOptions(actor ID, text, flag ID, choice 1, choice 2, ...)
/// @param actor ID
/// @param  text
/// @param  flag ID
/// @param  choice 1
/// @param  choice 2
/// @param  ...
global.write++; 
global.step[global.write, 0] = argument[1];
global.step[global.write, 1] = argument[0];
global.step[global.write, 36] = argument[2];
global.step[global.write, 37] = argument[3];
if(argument_count >= 5)global.step[global.write, 38] = argument[4];
if(argument_count >= 6)global.step[global.write, 39] = argument[5];
if(argument_count >= 7)global.step[global.write, 40] = argument[6];
if(argument_count >= 8)global.step[global.write, 41] = argument[7];
