if(alpha < 100 && dec == 0)alpha += 20;
if(alpha >= 100 && dec == 0)dec = 1;
if(alpha > 0 && dec == 1)alpha -= 4;
if(alpha <= 0 && dec == 1) instance_destroy();

