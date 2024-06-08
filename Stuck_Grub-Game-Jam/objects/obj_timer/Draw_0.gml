/// @description Insert description here
// You can write your code in this editor

// Draw Event
// Calculate time in seconds
var seconds = timer div room_speed; // room_speed is the number of steps per second, usually 60

// Optional: Convert seconds to minutes and seconds
var minutes = seconds div 60;
var remaining_seconds = seconds mod 60;

// Draw the timer on the screen
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_timer); // Make sure you have a font resource named 'fnt_timer'
draw_set_color(c_white);
draw_text(10, 10, string(minutes) + ":" + string_format(remaining_seconds, 2, 0));

