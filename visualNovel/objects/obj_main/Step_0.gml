if(global.drawRect_typ == 1)
{
    if(global.drawRect_alp > 0)global.drawRect_alp -= global.drawRect_spd; else {global.drawRect_typ = -1; global.drawRect_alp = 0};
}
if(global.drawRect_typ == 0)
{
    if(global.drawRect_alp < 1)global.drawRect_alp += global.drawRect_spd; else {global.drawRect_typ = -1; global.drawRect_alp = 1};
}

