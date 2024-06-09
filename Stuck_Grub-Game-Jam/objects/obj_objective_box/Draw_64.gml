/// @description Insert description here
// You can write your code in this editor

// Set the background color
draw_set_color(c_white);

// Draw a rectangle for the background
draw_rectangle(40, 40, 400, 100, false);

// Set the font to the custom cursive font
draw_set_font(fnt_grandma_handwriting);

// Set the color to the desired color for the text
draw_set_color(c_black);


// Draw the objective text at a specific position
var objective_text = "Help me find my favorite dog sticker, dear....but watch out for haunted stickers!";
draw_text(50, 50, objective_text);