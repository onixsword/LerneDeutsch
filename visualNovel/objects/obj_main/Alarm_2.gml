FadeOut(global.savedValue, global.savedColor);
global.currentBackground = global.savedBackground;
global.savedBackground = -1;
if(global.currentBackground >= 0)
{
    global.backgroundWidth = background_get_width(global.currentBackground);
    global.backgroundHeight = background_get_height(global.currentBackground);
    
    if(global.zoomTime > 0 && global.zoomType == 1)
    {
        global.backgroundWidth = background_get_width(global.currentBackground) * global.zoomAmount;
        global.backgroundHeight = background_get_height(global.currentBackground) * global.zoomAmount;
    }
    
    if(global.savedPosition == -1)global.backgroundX = 0; else
    if(global.savedPosition == 0)global.backgroundX = (__view_get( e__VW.WView, 0 ) - background_get_width(global.currentBackground)) / 2; else
    if(global.savedPosition == 1)global.backgroundX =  __view_get( e__VW.WView, 0 ) - background_get_width(global.currentBackground); else
    {
        global.backgroundX = global.savedPosition;
    }
    
    global.backgroundY = (background_get_height(global.currentBackground) - __view_get( e__VW.HView, 0 )) / 2;
}

