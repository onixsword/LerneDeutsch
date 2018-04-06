global.textSkip = 0;
global.arrowAlpha = 0;
global.arrowAlphaDec = 0;
global.showText = "";
global.nextChar = -1;
global.textFinished = 0;

global.textPosition = 1;
global.nextChar = global.textSpeed;

global.lastType = argument0;
global.textType = argument0;
if(argument0 == 0)
{
    global.textbox_sprite = global.sayTextbox_spr;
}
if(argument0 == 1)
{
    global.textbox_sprite = global.narrationTextbox_spr;
}
