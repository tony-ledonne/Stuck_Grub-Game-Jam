/// @description Insert description here
// You can write your code in this editor

// Create Event

// Sprite for the timer background
timer_background = spr_timer;

// Timer starts from 2 minutes (120 seconds)
time_remaining = 0;
max_time = 120 * room_speed; // room_speed gives the number of steps per second

// Maximum height of the timer bar
bar_height = sprite_height;

// Sprite for the timer fill
timer_fill_sprite = spr_timer_fill;
// Position adjustment for the fill bar within the border
fill_x_offset = 0; // Adjust this value based on the border width
fill_y_offset = 0; // Adjust this value based on the border width

