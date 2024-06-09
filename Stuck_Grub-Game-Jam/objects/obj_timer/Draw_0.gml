/// @description Insert description here
// You can write your code in this editor

// Draw Event
// Calculate the width of the bar based on the time passed
var current_height = (time_remaining / max_time) * bar_height;

// Draw the timer bar as a red rectangle
draw_set_color(c_red);
draw_rectangle(x, y, x + 50, y + current_height, false); // Adjust the height and y position as needed

draw_set_color(c_black);
draw_rectangle(x, y, x + 50, y + current_height, true); // True for outline