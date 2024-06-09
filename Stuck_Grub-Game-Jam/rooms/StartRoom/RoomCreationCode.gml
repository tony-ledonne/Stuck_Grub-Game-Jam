// Stop any currently playing music to avoid overlap
audio_stop_all();

// Play the start music
if (audio_is_playing(titlesound)) {
    audio_stop_sound(titlesound);
}
audio_play_sound(titlesound, 1, false); // Arguments: (sound, priority, loop)
