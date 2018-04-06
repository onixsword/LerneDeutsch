if(alpha < 100 && dec == 0)alpha += 30;
if(alpha >= 100 && dec == 0)dec = 1;
if(alpha > 0 && dec == 1)alpha -= 6;
if(alpha <= 0 && dec == 1) instance_destroy();

