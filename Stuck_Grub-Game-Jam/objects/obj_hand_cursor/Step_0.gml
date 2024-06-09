/// @description Insert description here
// You can write your code in this editor

//Step
// Step event of obj_hand_cursor

// Get the mouse position
var mouse_x = mouse_x;
var mouse_y = mouse_y;

// Get the center of the room
var room_center_x = room_width / 2;
var room_center_y = room_height / 2;

// Calculate the direction from the center of the room to the mouse position
var direction_to_mouse = point_direction(room_center_x, room_center_y, mouse_x, mouse_y);

// Set the position of the object to the mouse position
x = mouse_x;
y = mouse_y;

// Set the image angle to the direction calculated
image_angle = direction_to_mouse;
