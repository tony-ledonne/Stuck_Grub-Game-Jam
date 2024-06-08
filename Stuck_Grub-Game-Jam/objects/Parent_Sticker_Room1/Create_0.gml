// Create Event of obj_Sticker

// Check for overlaps with pre-existing sticker objects
with(Parent_Sticker_Room1) {
    // Skip self
    if (id != other.id) {
        // Check for collision
        if (bbox_left < other.bbox_right && bbox_right > other.bbox_left &&
            bbox_top < other.bbox_bottom && bbox_bottom > other.bbox_top) {
            // Change Clickable variable to false
            other.Clickable = false;
        }
    }
}
/*// Initialize height value
height = 0;

// Check for collisions with other stickers
var overlap = instance_place(x, y, Parent_Sticker_Room1);
if (overlap != noone && overlap != id) {
    // Sticker is overlapping with another sticker
    height += 1; // Set height value to 1 or any appropriate value
}