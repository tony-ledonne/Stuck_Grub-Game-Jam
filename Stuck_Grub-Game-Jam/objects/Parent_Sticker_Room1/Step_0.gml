
if(!initialize_layer_height)
{
	var overlap_instance = instance_place(x, y, Parent_Sticker_Room1);
	
	if(overlap_instance != noone && !overlap_instance.initialize_layer_height)
	{
		// Iterate through all sticker instances
		with (Parent_Sticker_Room1) {
		    // Check for pixel-perfect collision
		    var overlap = false;
		    for (var xx = bbox_left; xx < bbox_right; xx += 1) {
		        for (var yy = bbox_top; yy < bbox_bottom; yy += 1) {
		            if (collision_point(xx, yy, other, false, true)) {
		                overlap = true;
		                break;
		            }
		        }
		        if (overlap) break;
		    }

		    // Update the highest layer height if this sticker's layer_height is greater
		    if (overlap && other.layer_height >= layer_height && layer_height == 0) {
		        layer_height = other.layer_height + 1;
				depth = -layer_height;
		    }
		}
	
		initialize_layer_height = true;
	}
	
	if(overlap_instance != noone && overlap_instance.initialize_layer_height)
	{
		// Iterate through all sticker instances
		with (Parent_Sticker_Room1) {
		    // Check for pixel-perfect collision
		    var overlap = false;
		    for (var xx = bbox_left; xx < bbox_right; xx += 1) {
		        for (var yy = bbox_top; yy < bbox_bottom; yy += 1) {
		            if (collision_point(xx, yy, other, false, true)) {
		                overlap = true;
		                break;
		            }
		        }
		        if (overlap) break;
		    }

		    // Update the highest layer height if this sticker's layer_height is greater
		    if (overlap && other.layer_height >= layer_height && layer_height == 0) {
		        layer_height = other.layer_height + 1;
				depth = -layer_height;
		    }
		}
	
		initialize_layer_height = true;
	}
}