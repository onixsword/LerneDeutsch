if(alpha < 100 && dec == 0)alpha += 20;
if(alpha >= 100 && dec == 0)dec = 1;
if(alpha > 0 && dec == 1)alpha -= 5;
if(alpha <= 0 && dec == 1 && alarm[0] == -1)
{
    alarm[0] = 40;
}

