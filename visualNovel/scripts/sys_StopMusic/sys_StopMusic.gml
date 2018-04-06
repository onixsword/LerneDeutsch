if(obj_main.alarm[0] == -1 && obj_main.alarm[1] == -1)
{
    var time = argument0;
    audio_sound_gain(global.currentMusic, 0, time);
    global.lastMusic = global.currentMusic;
    global.currentMusic = -1;
    with obj_main alarm[1] = floor(time * 0.06);
}
