/// @description FadeOut(time, color)
/// @param time
/// @param  color
if(argument0 == 0)
{
    global.drawRect_typ = -1;
    global.drawRect_alp = 0;
    global.drawRect_spd = 0;
    global.drawRect_col = argument1;
}
else
{
    global.drawRect_typ = 1;
    global.drawRect_alp = 1;
    global.drawRect_spd = 1 / (argument0 * 0.06);
    global.drawRect_col = argument1;
}
