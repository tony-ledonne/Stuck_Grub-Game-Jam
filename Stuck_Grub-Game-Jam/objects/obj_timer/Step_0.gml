/// @description Insert description here
// You can write your code in this editor

// Decrease the time remaining
time_remaining += 1;

// Check if time has run out
if (time_remaining >= max_time) {
    // Transition to the lose screen
    room_goto(LoseRoom);
}
