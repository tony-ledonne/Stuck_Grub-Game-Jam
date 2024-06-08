// Check if the mouse is over the sprite
if (mouse_x >= x && mouse_x <= x + sprite_width && mouse_y >= y && mouse_y <= y + sprite_height) {
    instance_destroy(); // Remove the sprite from the game
}