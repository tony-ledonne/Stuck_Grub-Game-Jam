/// @description Insert description here
// You can write your code in this editor

// Room Start Event
if (room == Background_1_1) {
    window_set_cursor(cr_none);
    instance_create_layer(0, 0, "Inst_Hand", obj_hand_cursor);
}

// Room Start Event
if (room == Background_1_2) {
    window_set_cursor(cr_none);
    instance_create_layer(0, 0, "Inst_Hand", obj_hand_cursor);
	audio_play_sound(oohyes, 1, false);			
	audio_sound_gain(oohyes, 1.25, 0);
}

// Room Start Event
if (room == Background_1_3) {
    window_set_cursor(cr_none);
    instance_create_layer(0, 0, "Inst_Hand", obj_hand_cursor);
	audio_play_sound(oohyes, 1, false);			
	audio_sound_gain(oohyes, 1.25, 0);
}
