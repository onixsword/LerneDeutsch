global.showSpeed = 1 / (argument[0] * 0.06);
global.showAlpha = 0;

for(var i = 0; i < 4; i ++)
{
    global.lastchar[i] = global.char[i];
}
for(var i = 0; i < 4; i ++)
{
    global.char[i] = argument[i + 1];
}
