if(alpha < 100 && dec == 0)alpha += 12;
if(alpha >= 100 && dec == 0)dec = 1;
if(alpha > 0 && dec == 1)alpha -= 2;
if(alpha <= 10 && dec == 1) dec = 2;
if(alpha < 100 && dec == 2)alpha += 20;
if(alpha >= 100 && dec == 2)dec = 3;
if(alpha > 0 && dec == 3)alpha -= 5;
if(alpha <= 0 && dec == 3) instance_destroy();

