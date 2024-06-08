// Stop any currently playing music to avoid overlap
audio_stop_all();

// Play the imported sound 'snd_guitarlofi'
if (audio_is_playing(guitarlofi)) {
    audio_stop_sound(guitarlofi);
}
audio_play_sound(guitarlofi, 1, true); // Arguments: (sound, priority, loop)
