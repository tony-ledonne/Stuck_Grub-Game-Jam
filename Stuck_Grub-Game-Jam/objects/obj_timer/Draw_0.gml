/// @description Insert description here
// You can write your code in this editor

// Draw Event
// Calculate the width of the bar based on the time remaining
var current_width = (time_remaining / (30 * room_speed)) * bar_width;

// Draw the timer bar as a red rectangle
draw_set_color(c_red);
draw_rectangle(x, y, x + current_width, y + 20, false); // Adjust the height and y position as needed
