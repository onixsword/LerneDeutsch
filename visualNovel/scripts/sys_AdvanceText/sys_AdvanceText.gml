

sys_RunEvents();
global.currentStep++;

if(global.step[global.currentStep, 43] != -1)
{
    if(global.flag[global.step[global.currentStep, 43]] != global.step[global.currentStep, 44])
    {
        sys_AdvanceText();
        exit;
    }
}

var len = array_height_2d(global.step) - 1;

global.textSkip = 0;
global.arrowAlpha = 0;
global.arrowAlphaDec = 0;
global.currentText = "";
global.showText = "";
global.nextChar = -1;
global.textFinished = 0;

if(global.currentStep >= len)
{   
    global.currentScene ++;
    global.textType = -1;
    exit;
}

global.textPosition = 1;
global.currentText = global.step[global.currentStep, 0];
global.textActor = global.step[global.currentStep, 1];

if(global.step[global.currentStep, 1] == -2)
{
    global.textbox_sprite = global.narrationTextbox_spr;
}
else
{
    global.textbox_sprite = global.sayTextbox_spr;
}

global.nextChar = global.textSpeed;

if(global.gameState == 0)
{
    global.textType = -1;
}

if(global.step[global.currentStep, 36] != -1)
{
    sys_ShowOptions(global.step[global.currentStep, 36], global.step[global.currentStep, 37], global.step[global.currentStep, 38], global.step[global.currentStep, 39], global.step[global.currentStep, 40], global.step[global.currentStep, 41]);
}

