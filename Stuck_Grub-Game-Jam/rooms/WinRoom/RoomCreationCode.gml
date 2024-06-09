// Stop any currently playing music to avoid overlap
audio_stop_all();

// Play the winning sound 
if (audio_is_playing(winning)) {
    audio_stop_sound(winning);
}
audio_play_sound(winning, 1, false); // Arguments: (sound, priority, loop)
