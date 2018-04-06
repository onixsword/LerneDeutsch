
if(global.drawRect_alp > 0)
{
    draw_set_color(global.drawRect_col);
    draw_set_alpha(global.drawRect_alp);
    draw_rectangle(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0);
    draw_set_alpha(1);
}

draw_text(4, 4, string_hash_to_newline(global.gameState));

