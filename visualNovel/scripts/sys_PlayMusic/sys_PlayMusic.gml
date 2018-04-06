if(obj_main.alarm[0] == -1 && obj_main.alarm[1] == -1)
{
    if(global.currentMusic != -1)
    {
        var time = 1000;
        audio_sound_gain(global.currentMusic, 0, time);
        global.lastMusic = global.currentMusic;
        global.currentMusic = argument0;
        with obj_main alarm[0] = floor(time * 0.06);
        global.musicFadeInTime = argument1;
    }
    else
    {
        global.currentMusic = argument0;
        audio_play_sound(global.currentMusic, 0, 1);
    }
}
