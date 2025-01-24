/// @description Insert description here
// You can write your code in this editor

draw_set_font(fn_hud);

if(room != rm_menu)
{
	draw_text(room_width - 500, room_height - 100, "Press Esc or Controller Menu button to return to menu");
	camera_get_view_border_x(0);
}
