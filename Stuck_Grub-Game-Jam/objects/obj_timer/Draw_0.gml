/// @description Insert description here
// You can write your code in this editor

// Draw Event


// Draw the background sprite
draw_sprite(spr_timer, 0, x, y);

// Calculate the width of the filling bar based on the time passed
var current_height = (time_remaining / max_time) * bar_height;

// Calculate the x position to start drawing the fill bar from the right
var fill_start_y = y + sprite_height - fill_y_offset - current_height;

// Draw the filling bar
draw_sprite_part(timer_fill_sprite, 1, 0, 0, sprite_width, current_height, x , y - fill_start_y);
