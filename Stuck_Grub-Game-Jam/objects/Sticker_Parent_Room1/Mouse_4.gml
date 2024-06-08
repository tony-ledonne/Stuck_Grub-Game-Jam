// Check if the mouse is over the sprite
if (mouse_x >= x && mouse_x <= x + sprite_width && mouse_y >= y && mouse_y <= y + sprite_height) {
    instance_destroy(); // Remove the sprite from the game
}

/*
// Check if SpawnObject attribute is true
if (object_variable_test(other.id, "SpawnObject")) {
    // Spawn a new object
    instance_create(x, y, obj_NewObject);
}
