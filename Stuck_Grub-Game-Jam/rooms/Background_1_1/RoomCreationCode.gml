// Stop any currently playing music to avoid overlap
audio_stop_all();

// Play the main track 'snd_guitarlofi'
if (audio_is_playing(guitarlofi)) {
    audio_stop_sound(guitarlofi);
}
audio_play_sound(guitarlofi, 1, true); // Arguments: (sound, priority, loop)

// Play the background track 'snd_background'
if (audio_is_playing(background)) {
    audio_stop_sound(background);
}
audio_play_sound(background, 2, true); // Arguments: (sound, priority, loop)
