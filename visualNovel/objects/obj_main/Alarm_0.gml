audio_stop_sound(global.lastMusic);
audio_play_sound(global.currentMusic, 0, 1);
audio_sound_gain(global.currentMusic, 0, 0);
audio_sound_gain(global.currentMusic, 1, global.musicFadeInTime);

