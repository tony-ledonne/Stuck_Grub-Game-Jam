// Create Event of obj_Sticker

// Check for overlaps with pre-existing sticker objects

/*
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
	*/
	// Create Event of obj_Sticker

// Create Event of obj_Sticker

// Initialize the clickable variable
clickable = true;

// Check for overlaps with pre-existing sticker objects
with(Parent_Sticker_Room1) {
    // Skip self
    if (id != other.id) {
        // Check for pixel-perfect collision
		
		
        var overlap = false;
		
		/*
        for (var xx = bbox_left; xx < bbox_right; xx += 1) {
            for (var yy = bbox_top; yy < bbox_bottom; yy += 1) {
                if (collision_point(xx, yy, other, false, true)) {
                    overlap = true;
                    break;
                }
            }
            if (overlap) break;
        } */
		overlap = collision_point (x, y, Parent_Sticker_Room1, true, false);
        
        // If overlap detected, compare depths
        if (overlap) {
            if (depth >= other.depth) {
                clickable = false;
				
            } else {
				 // Set depth to be less than the depth of the sticker(s) it overlaps with
				depth = other.depth - 1;	
				clickable = true;
			}
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

