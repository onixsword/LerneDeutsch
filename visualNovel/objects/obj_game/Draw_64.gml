if(global.textbox_alpha > 0)
{
    var textbox_xPos = 0;
    var textbox_yPos = __view_get( e__VW.HView, 0 ) - sprite_get_height(global.textbox_sprite);
    
    draw_sprite_ext(global.textbox_sprite, 0, textbox_xPos, textbox_yPos, 1, 1, 0, image_blend, global.textbox_alpha);
    

    if(global.textbox_alpha >= 1 && global.drawRect_alp == 0 && global.textType != -1)
    {
        draw_set_font(global.textFont);
        draw_set_color(global.textColor);
        
        var cx = textbox_xPos + 28, cy = textbox_yPos + 50, nextwordWidth = 0;
        word = "";
        
        var drawQuotes = 0, thisText = "";
        if(global.textActor >= 0)drawQuotes = 1;
        if(drawQuotes == 1)
        {
            thisText += "\"";
        }
        thisText += global.currentText;
        if(drawQuotes == 1)
        {
            thisText += "\"";
        }
        
        thisText += " ";
        
        for(var i = 1; i < global.textPosition + drawQuotes * 2; i ++)
        {
            currentLetter = string_char_at(thisText, i);
            word += currentLetter;
            if(currentLetter == " ")
            {
                nextWord = "";
                var found = 0;
                for(var ii = 1; ii < 100; ii ++)
                {
                    nwcl = string_char_at(thisText, i + ii);
                    nextWord += nwcl;
                    if(nwcl == " ")
                    {
                        found = 1;
                        nextwordWidth = string_width(string_hash_to_newline(nextWord));
                        
                    }
                    if(found == 1)break;
                }
                word = "";
            }
            
            draw_text(cx, cy, string_hash_to_newline(currentLetter));
            cx += string_width(string_hash_to_newline(currentLetter));
            
            if(cx > 786 - nextwordWidth && (word == "" || word == "." || word == " "))
            {
                cx = 28;
                cy += 26;
                maxWord = 0;
            }
        }
    }
    
    if(global.textFinished == 1)
    {
        var alp = global.arrowAlpha;
        if(alp < 0)alp = 0;
        draw_sprite_ext(global.textArrow, 0, textbox_xPos + 772, textbox_yPos + 120, 1, 1, 0, image_blend, alp);
    }
    
    if(global.textActor >= 0 && global.textbox_alpha >= 1 && global.drawRect_alp == 0 && global.textType != -1)
    {
        var name = "";
        if(global.actor[global.textActor, 3] == false)
        {
            name = "???";
        } else name = global.actor[global.textActor, 0];
        
        draw_set_color(global.actor[global.textActor, 2]);
        draw_set_font(global.textFontBold);
        
        draw_text(textbox_xPos + 14, textbox_yPos + 9, string_hash_to_newline(name));
    }
    
    if(global.nChoices > 0 && global.textFinished == 1)
    {
        global.choiceSelection = -1;
        for(var i = 0; i < global.nChoices; i ++)
        {
            var xx = __view_get( e__VW.WView, 0 ) / 2 - 304;
            var yy = __view_get( e__VW.HView, 0 ) / 2 + i * 36 - (global.nChoices * 36) / 2;
            draw_sprite(spr_choice, 0, xx, yy)
            
            
            if(mouse_x > xx && mouse_x < xx + 608 && mouse_y > yy && mouse_y < yy + 35)
            {
                global.choiceSelection = i;
                if(mouse_check_button_pressed(mb_left) && global.canClick == 1)
                {
                    global.canClick = 0;
                    global.flag[global.step[global.currentStep, 36]] = i;
                    sys_ClearChoices();
                    sys_AdvanceText();
                }
            }
            
            draw_set_halign(fa_center);
            draw_set_font(ft_normal);
            if(global.choiceSelection != i)draw_set_color(make_color_rgb(157, 147, 128)); else draw_set_color(make_color_rgb(96, 89, 74));
            draw_text(__view_get( e__VW.WView, 0 ) / 2, yy + 2, string_hash_to_newline(global.choice[i]));
            draw_set_halign(fa_left);
        }
    }
}



