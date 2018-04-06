global.currentBackground = argument0;
if(global.currentBackground >= 0)
{
    global.backgroundWidth = background_get_width(global.currentBackground);
    global.backgroundHeight = background_get_height(global.currentBackground);
    
    if(argument1 == -1)global.backgroundX = 0; else
    if(argument1 == 0)global.backgroundX = (__view_get( e__VW.WView, 0 ) - background_get_width(global.currentBackground)) / 2; else
    if(argument1 == 1)global.backgroundX =  __view_get( e__VW.WView, 0 ) - background_get_width(global.currentBackground); else
    {
        global.backgroundX = argument1;
    }
    
    global.backgroundY = (background_get_height(global.currentBackground) - __view_get( e__VW.HView, 0 )) / 2;
}
