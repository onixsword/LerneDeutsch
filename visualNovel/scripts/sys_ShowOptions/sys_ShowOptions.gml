for(var i = 0; i < 5; i ++)
{
    if(global.step[global.currentStep, 37 + i] != -1)
    {
        global.nChoices ++;
        global.choice[i] = global.step[global.currentStep, 37 + i];
    }
}

alarm[1] = 10;
