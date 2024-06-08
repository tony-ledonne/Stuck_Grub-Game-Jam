// Initialize height value
height = 0;

// Check for collisions with other stickers
var overlap = instance_place(x, y, Parent_Sticker_Room1);
if (overlap != noone && overlap != id) {
    // Sticker is overlapping with another sticker
    height += 1; // Set height value to 1 or any appropriate value
}