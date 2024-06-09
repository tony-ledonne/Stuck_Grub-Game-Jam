// Define an array containing the names of the objects in the subset
var object_subset = [Envelope_obj, Mailbox_obj, Package_obj, SmallFlower_obj];

// Check if the mouse is over the sprite
if (clickable && mouse_x >= x && mouse_x <= x + sprite_width && mouse_y >= y && mouse_y <= y + sprite_height) {
	//var Clickable = true;
    
  // Loop through all instances of the parent object to check if any child sticker obscures this one
//with(Parent_Sticker_Room1) {
    // Skip the current instance (parent object)
    //if (id != other.id) {
        // Check if the current sticker obscures the clicked one
       // if (bbox_left < other.bbox_right && bbox_right > other.bbox_left &&
           // bbox_top < other.bbox_bottom && bbox_bottom > other.bbox_top) {
          //  Clickable = false;
         //   break; // No need to continue checking if obscured
       // }
   // }
//}
    // Check if the "pink" variable of the clicked object is true
    if (variable_instance_exists(self, "pink") && pink) {
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
         } 
		 
		 
    instance_destroy(); // Remove the sprite from the game
	
	
}
