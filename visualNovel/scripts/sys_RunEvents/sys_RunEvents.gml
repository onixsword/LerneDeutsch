if(global.step[global.currentStep, 4] != -1)
{
    if(global.step[global.currentStep, 7] == -1)
    {
        sys_ChangeBackground(global.step[global.currentStep, 4], global.step[global.currentStep, 5]);
    } else sys_ChangeBackgroundFade(global.step[global.currentStep, 4], global.step[global.currentStep, 5], global.step[global.currentStep, 6], global.step[global.currentStep, 7]);
}
if(global.step[global.currentStep, 8] != -1)
{
    sys_PlayMusic(global.step[global.currentStep, 8], global.step[global.currentStep, 9]);
}
if(global.step[global.currentStep, 10] != -1)
{
    sys_StopMusic(global.step[global.currentStep, 10]);
}
if(global.step[global.currentStep, 11] != -1)
{
    sys_SetWeather(global.step[global.currentStep, 11], global.step[global.currentStep, 12]);
}
if(global.step[global.currentStep, 16] != -1)
{
    sys_setKnownActor(global.step[global.currentStep, 16]);
}
if(global.step[global.currentStep, 17] != -1)
{
    audio_play_sound(global.step[global.currentStep, 17], 0, 0);
}
if(global.step[global.currentStep, 18] != -1)
{
    sys_ZoomIn(global.step[global.currentStep, 18], global.step[global.currentStep, 19]);
}
if(global.step[global.currentStep, 20] != -1)
{
    sys_ZoomOut(global.step[global.currentStep, 20], global.step[global.currentStep, 21]);
}
if(global.step[global.currentStep, 22] != -1)
{
    sys_Wait(global.step[global.currentStep, 22], global.step[global.currentStep, 23]);
}
if(global.step[global.currentStep, 24] != -1)
{
    if(global.step[global.currentStep, 28] > 0)sys_Wait(global.step[global.currentStep, 28], global.step[global.currentStep, 30]);
    global.VFXObject = global.step[global.currentStep, 24];
    global.VFXTimer = global.step[global.currentStep, 27] * 0.06;
    global.VFX_xpos = global.step[global.currentStep, 25];
    global.VFX_ypos = global.step[global.currentStep, 26];
    
    if(global.step[global.currentStep, 29] == hide)
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
if(global.step[global.currentStep, 31] != -1)
{
    sys_Show(global.step[global.currentStep, 31], global.step[global.currentStep, 32], global.step[global.currentStep, 33], global.step[global.currentStep, 34], global.step[global.currentStep, 35]);
}
if(global.step[global.currentStep, 42] != -1)
{
    sys_ChangeState(global.step[global.currentStep, 42]);
}
