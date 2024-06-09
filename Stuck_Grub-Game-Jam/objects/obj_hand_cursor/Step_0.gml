/// @description Insert description here
// You can write your code in this editor

// Calculate the center of the room
var center_x = room_width / 2;
var center_y = room_height / 2;

image_index = 0;

// Calculate the angle from the center of the room to the mouse position
var angle = point_direction(center_x, center_y, mouse_x, mouse_y);

// Set the position of the cursor to the mouse position
x = mouse_x;
y = mouse_y;

// Set the image_angle to the calculated angle
image_angle = angle;

 // Check for left mouse button press to change the frame
if (mouse_check_button(mb_left)) {
    image_index = 1; // Change to the second frame
}

// Optionally, revert to the first frame when the left mouse button is released
if (mouse_check_button_released(mb_left)) {
    image_index = 0; // Change back to the first frame
}