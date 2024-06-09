// Stop any currently playing music to avoid overlap
audio_stop_all();

// Play the losing sound 'losingrant'
if (audio_is_playing(losingrant)) {
    audio_stop_sound(losingrant);
}
audio_play_sound(losingrant, 1, false); // Arguments: (sound, priority, loop)
