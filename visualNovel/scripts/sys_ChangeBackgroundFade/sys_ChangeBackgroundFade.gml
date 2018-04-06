global.savedBackground = argument0;
global.savedPosition = argument1;
global.savedColor = argument2;
global.savedValue = ceil(argument3 / 2); 

FadeIn(ceil(argument3 / 2), argument2);
obj_main.alarm[2] = argument3 * 0.06;

sys_TextEnd();
