if(global.currentWeather == 0)
{
    if(alarm[0] == -1)alarm[0] = 10;
}
if(global.textType != -1 && global.drawRect_typ == -1)
{
    if(global.textbox_alpha < 1)global.textbox_alpha += 1 / 30;
}
if(global.textType == -1)
{
    if(global.textbox_alpha > 0)global.textbox_alpha -= 1 / 30;
}
if(global.textType != -1 && global.textbox_alpha >= 1 && global.timeOut == 0)
{
    if(global.textFinished == 0)
    {
        if(mouse_check_button_pressed(mb_left))global.textSkip = 1;
        if(global.nextChar > 1)
        {
            global.nextChar --;
        } else
        {
            if(global.textSkip == 0)
            {
                global.showText += string_char_at(global.currentText, global.textPosition);
                global.textPosition ++;
            }
            else 
            {
                repeat(10)
                {
                    global.showText += string_char_at(global.currentText, global.textPosition);
                    global.textPosition ++;
                    if(string_length(global.showText) >= string_length(global.currentText)) break;
                }
            }
            if(global.textActor >= 0)
            {
                if(global.actor[global.textActor, 1] == 0 && global.textSound_male != -1)audio_play_sound(textSound_male, 0, 0);
                if(global.actor[global.textActor, 1] == 1 && global.textSound_female != -1)audio_play_sound(textSound_female, 0, 0);
            }
            if(string_length(global.showText) >= string_length(global.currentText))
            {
                global.textFinished = 1;
                global.textSkip = 0;
            }
            if(global.textFinished == 0)
            {
                global.nextChar = global.textSpeed;
            }
        }
    }
    else
    {
        if(mouse_check_button_pressed(mb_left) && global.nChoices == 0)
        {
            sys_AdvanceText();
        }
    }
}

if(global.textFinished == 1)
{
    if(global.arrowAlpha < 1.05 && global.arrowAlphaDec == 0)global.arrowAlpha += 1 / 53;
    if(global.arrowAlpha >= 1.05 && global.arrowAlphaDec == 0)global.arrowAlphaDec = 1;
    if(global.arrowAlpha > - 0.05 && global.arrowAlphaDec == 1)global.arrowAlpha -= 1 / 53;
    if(global.arrowAlpha <= -0.05 && global.arrowAlphaDec == 1)global.arrowAlphaDec = 0;
}

if(global.zoomTime > 0 && global.drawRect_alp <= 0)
{
    if(global.zoomType == 0)
    {
        global.zoomTime --;
        global.backgroundWidth += ((background_get_width(global.currentBackground) * global.zoomAmount) - background_get_width(global.currentBackground)) / global.zoomTotalTime;
        global.backgroundHeight += ((background_get_height(global.currentBackground) * global.zoomAmount) - background_get_height(global.currentBackground)) / global.zoomTotalTime;
        if(global.backgroundWidth >= background_get_width(global.currentBackground) * global.zoomAmount)
        {
            zoomTime = 0;
            zoomType = -1;
            zoomTotalTime = 0;
            global.backgroundWidth = background_get_width(global.currentBackground) * global.zoomAmount;
            global.backgroundHeight = background_get_height(global.currentBackground) * global.zoomAmount;
        }
    }
    else
    {
        global.zoomTime --;
        global.backgroundWidth -= ((background_get_width(global.currentBackground) * global.zoomAmount) - background_get_width(global.currentBackground)) / global.zoomTotalTime;
        global.backgroundHeight -= ((background_get_height(global.currentBackground) * global.zoomAmount) - background_get_height(global.currentBackground)) / global.zoomTotalTime;
        if(global.backgroundWidth <= background_get_width(global.currentBackground))
        {
            zoomTime = 0;
            zoomType = -1;
            zoomTotalTime = 0;
            global.backgroundWidth = background_get_width(global.currentBackground);
            global.backgroundHeight = background_get_height(global.currentBackground);
        } 
    }
}

if(global.timeOut > 0 && global.drawRect_alp <= 0)
{
    global.timeOut --;
    if(global.timeOut == 0)
    {
        if(global.timeOutEndAction == 1)
        {
            global.textSkip = 0;
            global.arrowAlpha = 0;
            global.arrowAlphaDec = 0;
            global.showText = "";
            global.nextChar = -1;
            global.textFinished = 0;
            
            global.textType = global.lastType;
            global.textPosition = 1;
            global.nextChar = global.textSpeed;
        }
        if(global.timeOutEndAction == 0)
        {
    
            global.textSkip = 0;
            global.arrowAlpha = 0;
            global.arrowAlphaDec = 0;
            global.currentText = "";
            global.showText = "";
            global.nextChar = -1;
            global.textFinished = 0;
            
            global.textType = -1;
        }
    }
}

if(global.VFXTimer >= 0)
{
    global.VFXTimer --;
    if(global.VFXTimer == -1)
    {
        instance_create(global.VFX_xpos, global.VFX_ypos, global.VFXObject);
    }
}

if(global.showSpeed > 0 && global.drawRect_alp <= 0 && global.timeOut == 0)
{
    if(global.showAlpha < 1)global.showAlpha += global.showSpeed;
}

