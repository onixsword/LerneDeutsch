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

sys_RunEvents();
global.currentStep++;

global.showText = "";
global.textPosition = 1;
global.currentText = global.step[global.currentStep, 0];
global.textActor = global.step[global.currentStep, 1];

global.nextChar = global.textSpeed;

global.gameState = 1;
