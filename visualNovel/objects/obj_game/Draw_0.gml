if(global.currentBackground >= 0)
{
    var xp = (global.backgroundWidth - background_get_width(global.currentBackground)) / 2;
    var yp = (global.backgroundHeight - background_get_height(global.currentBackground)) / 2;
    draw_background_stretched(global.currentBackground, global.backgroundX - xp, global.backgroundY - yp, global.backgroundWidth, global.backgroundHeight);
}

if(global.showAlpha > 0)
{
    ////////
    if(global.showAlpha < 1)
    {
        var nchars = 0, wid = 0;
        for(var i = 0; i < 4; i ++)
        {
            if(global.lastchar[i] != -1)
            {
                nchars++;
                wid += sprite_get_width(global.lastchar[i]);
            }
        }
        if(nchars > 0 && global.lastchar[nchars - 1] != -1)wid -= sprite_get_width(global.lastchar[nchars - 1]);
        var wide = 0;
        for(var i = 0; i < 4; i ++)
        {
            if(global.lastchar[i] != -1)
            {
                if(i > 0)wide += sprite_get_width(global.lastchar[i - 1]);
                draw_sprite_ext(global.lastchar[i], 0, - floor(wid / 2) + global.charX + wide - floor(sprite_get_width(global.lastchar[i]) / 2), __view_get( e__VW.HView, 0 ) - sprite_get_height(global.lastchar[i]), 1, 1, 0, image_blend, 1 - global.showAlpha);
            }
        }
    }
    ///
    var nchars = 0, wid = 0;
    for(var i = 0; i < 4; i ++)
    {
        if(global.char[i] != -1)
        {
            nchars++;
            wid += sprite_get_width(global.char[i]);
        }
    }
    if(nchars > 0 && global.char[nchars - 1] != -1)wid -= sprite_get_width(global.char[nchars - 1]);
    var wide = 0;
    for(var i = 0; i < 4; i ++)
    {
        if(global.char[i] != -1)
        {
            if(i > 0)wide += sprite_get_width(global.char[i - 1]);
            var alpha = global.showAlpha;
            if(global.char[i] == global.lastchar[i])alpha = 1;
            draw_sprite_ext(global.char[i], 0, - floor(wid / 2) + global.charX + wide - floor(sprite_get_width(global.char[i]) / 2), __view_get( e__VW.HView, 0 ) - sprite_get_height(global.char[i]), 1, 1, 0, image_blend, alpha);
        }
    }
    

}

