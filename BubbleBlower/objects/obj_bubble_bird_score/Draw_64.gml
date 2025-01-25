/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_arial);
draw_set_color(c_white);

if(room != rm_Bubble_Bird_endless)
{
	draw_text(room_width / 2, 50,  string_concat(string(score), "/", string(totalScoreNeeded)));	
}
else{
	draw_text(room_width / 2, 50,  string(score));
}
