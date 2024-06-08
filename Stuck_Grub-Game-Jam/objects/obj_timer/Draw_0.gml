/// @description Insert description here
// You can write your code in this editor

// Draw Event
var bar_width = 200; // Width of the progress bar
var bar_height = 20; // Height of the progress bar
var bar_x = 10; // X position of the progress bar
var bar_y = 10; // Y position of the progress bar

// Calculate the progress percentage
var progress = timer / max_time;

// Draw the background of the progress bar
draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// Draw the filled part of the progress bar
draw_set_color(c_green);
draw_rectangle(bar_x, bar_y, bar_x + (bar_width * progress), bar_y + bar_height, false);

// Optional: Draw a border around the progress bar
draw_set_color(c_white);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, true);

