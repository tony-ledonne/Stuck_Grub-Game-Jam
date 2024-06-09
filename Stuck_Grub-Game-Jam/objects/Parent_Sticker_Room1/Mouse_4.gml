// Check Room
if (room = Background_1_1) {
// Define an array containing the names of the objects in the subset (-winner1)
var object_subset = [Envelope_obj, Mailbox_obj, Package_obj, SmallFlower_obj, Acorns_obj, Axe_obj, Bear_obj, Bed_obj, Butterfly_obj, Canoe_obj, dogSmile_obj, dogSpot_obj, Fern_obj, Fire_obj, Jump_obj, kidBalloon_obj, kidBike_obj, kidCowboyHat_obj, kidGameGuy_obj, kidIceCream_obj, kidKite_obj, kidSoda_obj, kidSunglasses_obj, kidTire_obj, Lantern_obj, Lick_obj, Mailbox_obj, Milk_obj, PineCone_obj, SleepingBag_obj, Smile_obj, Snail_obj, Stamp_obj, Tent_obj, vintageBug_obj, vintageButterfly_obj, vintageLeaf_obj, vintageMushroom_obj, Wax_obj];

// Check if the mouse is over the sprite
if (mouse_x >= x && mouse_x <= x + sprite_width && mouse_y >= y && mouse_y <= y + sprite_height) {
    // Check if the "winner" variable of the clicked object is true
    if (variable_instance_exists(self, "winner1") && winner1) {
        // Change room to the desired room
        room_goto(WinRoom); 
    } else {
        // Check if the "pink" variable of the clicked object is true
        if (cat || food || green) {
            // Play the bad sound
            audio_play_sound(Mildno, 1, false); // Arguments: (sound, priority, loop)
            // Set volume
            audio_sound_gain(Mildno, 1, 0);

            // Spawn first object
            var random_index1 = irandom_range(0, array_length_1d(object_subset) - 1);
            var selected_object1 = object_subset[random_index1];
            var random_x1 = irandom_range(room_width * 0.1, room_width * 0.9); 
            var random_y1 = irandom_range(room_height * 0.1, room_height * 0.9);
            var new_obj1 = instance_create_layer(random_x1, random_y1, layer, selected_object1);

            // Spawn second object
            var random_index2 = irandom_range(0, array_length_1d(object_subset) - 1);
            var selected_object2 = object_subset[random_index2];
            var random_x2 = irandom_range(room_width * 0.1, room_width * 0.9); 
            var random_y2 = irandom_range(room_height * 0.1, room_height * 0.9);
            var new_obj2 = instance_create_layer(random_x2, random_y2, layer, selected_object2);
        } else {
            // Play the good sound
            audio_play_sound(oohgood, 1, false); // Arguments: (sound, priority, loop)
            // Set volume to 30% for oohsound
            audio_sound_gain(oohgood, 0.3, 0);
        }
    }
	
	
    instance_destroy(); // Remove the sprite from the game

// Check for overlaps with pre-existing sticker objects
with(Parent_Sticker_Room1) {
    // Skip self
    if (id != other.id) {
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
}
}
// Check Room
else if (room == Background_1_2) {
// Define an array containing the names of the objects in the subset (- Luca)
var object_subset = [Envelope_obj, Mailbox_obj, Package_obj, SmallFlower_obj, Acorns_obj, Axe_obj, Bear_obj, Bed_obj, Butterfly_obj, Canoe_obj, dogSmile_obj, dogSpot_obj, Fern_obj, Fire_obj, Jump_obj, kidBalloon_obj, kidBike_obj, kidCowboyHat_obj, kidGameGuy_obj, kidIceCream_obj, kidKite_obj, kidSoda_obj, kidSunglasses_obj, kidTire_obj, Lantern_obj, Lick_obj, Mailbox_obj, Milk_obj, PineCone_obj, SleepingBag_obj, Smile_obj Snail_obj, Stamp_obj, Tent_obj, vintageBug_obj, vintageButterfly_obj, vintageLeaf_obj, vintageMushroom_obj, Wax_obj];

// Check if the mouse is over the sprite
if (mouse_x >= x && mouse_x <= x + sprite_width && mouse_y >= y && mouse_y <= y + sprite_height) {
    // Check if the "winner" variable of the clicked object is true
    if (variable_instance_exists(self, "winner2") && winner2) {
        // Change room to the desired room
        room_goto(WinRoom); 
    } else {
        // Check if the "pink" variable of the clicked object is true
        if (cat || food || green) {
            // Play the bad sound
            audio_play_sound(Mildno, 1, false); // Arguments: (sound, priority, loop)
            // Set volume to 50% for nosound
            audio_sound_gain(Mildno, 0.7, 0);

            // Spawn first object
            var random_index1 = irandom_range(0, array_length_1d(object_subset) - 1);
            var selected_object1 = object_subset[random_index1];
            var random_x1 = irandom_range(room_width * 0.1, room_width * 0.9); 
            var random_y1 = irandom_range(room_height * 0.1, room_height * 0.9);
            var new_obj1 = instance_create_layer(random_x1, random_y1, layer, selected_object1);

            // Spawn second object
            var random_index2 = irandom_range(0, array_length_1d(object_subset) - 1);
            var selected_object2 = object_subset[random_index2];
            var random_x2 = irandom_range(room_width * 0.1, room_width * 0.9); 
            var random_y2 = irandom_range(room_height * 0.1, room_height * 0.9);
            var new_obj2 = instance_create_layer(random_x2, random_y2, layer, selected_object2);
        } else {
            // Play the good sound
            audio_play_sound(oohgood, 1, false); // Arguments: (sound, priority, loop)
            // Set volume to 30% for oohsound
            audio_sound_gain(oohgood, 0.3, 0);
        }
    }
	
    instance_destroy(); // Remove the sprite from the game

// Check for overlaps with pre-existing sticker objects
with(Parent_Sticker_Room1) {
    // Skip self
    if (id != other.id) {
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
}
}
// Check Room
else if (room == Background_1_3){
// Define an array containing the names of the objects in the subset (- Luca)
var object_subset = [Envelope_obj, Mailbox_obj, Package_obj, SmallFlower_obj, Acorns_obj, Axe_obj, Bear_obj, Bed_obj, Butterfly_obj, Canoe_obj, dogSmile_obj, dogSpot_obj, Fern_obj, Fire_obj, Jump_obj, kidBalloon_obj, kidBike_obj, kidCowboyHat_obj, kidGameGuy_obj, kidIceCream_obj, kidKite_obj, kidSoda_obj, kidSunglasses_obj, kidTire_obj, Lantern_obj, Lick_obj, Mailbox_obj, Milk_obj, PineCone_obj, SleepingBag_obj, Smile_obj, Snail_obj, Stamp_obj, Tent_obj, vintageBug_obj, vintageButterfly_obj, vintageLeaf_obj, vintageMushroom_obj, Wax_obj];

// Check if the mouse is over the sprite
if (mouse_x >= x && mouse_x <= x + sprite_width && mouse_y >= y && mouse_y <= y + sprite_height) {
    // Check if the "winner" variable of the clicked object is true
    if (variable_instance_exists(self, "winner3") && winner3) {
        // Change room to the desired room
        room_goto(WinRoom); 
    } else {
        // Check if the "pink" variable of the clicked object is true
        if (cat || food || green) {
            // Play the bad sound
            audio_play_sound(Mildno, 1, false); // Arguments: (sound, priority, loop)
            // Set volume to 50% for nosound
            audio_sound_gain(Mildno, 1, 0);

            // Spawn first object
            var random_index1 = irandom_range(0, array_length_1d(object_subset) - 1);
            var selected_object1 = object_subset[random_index1];
            var random_x1 = irandom_range(room_width * 0.1, room_width * 0.9); 
            var random_y1 = irandom_range(room_height * 0.1, room_height * 0.9);
            var new_obj1 = instance_create_layer(random_x1, random_y1, layer, selected_object1);

            // Spawn second object
            var random_index2 = irandom_range(0, array_length_1d(object_subset) - 1);
            var selected_object2 = object_subset[random_index2];
            var random_x2 = irandom_range(room_width * 0.1, room_width * 0.9); 
            var random_y2 = irandom_range(room_height * 0.1, room_height * 0.9);
            var new_obj2 = instance_create_layer(random_x2, random_y2, layer, selected_object2);
        } else {
            // Play the good sound
            audio_play_sound(oohgood, 1, false); // Arguments: (sound, priority, loop)
            // Set volume to 30% for oohsound
            audio_sound_gain(oohgood, 0.3, 0);
        }
    }	
    instance_destroy(); // Remove the sprite from the game

// Check for overlaps with pre-existing sticker objects
with(Parent_Sticker_Room1) {
    // Skip self
    if (id != other.id) {
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
}
}