/// @description Insert description here
// You can write your code in this editor

if(CheckAimDevice(prevMouseY, prevMouseX) = 1)
{
	if(abs(mouse_x - obj_player.x) != 0 && abs(mouse_y - obj_player.y) != 0)
	{
		xDir = mouse_x - obj_player.x;
		yDir = mouse_y - obj_player.y;
	
		len = sqrt(sqr(xDir) + sqr(yDir));
	
		normxDir = xDir / len;
		normyDir = yDir / len;
	
		aimxInput =	normxDir;
		aimyInput =	normyDir;
		
		
		//show_debug_message( aimyInput);
	}

}
else if(CheckAimDevice(prevMouseY, prevMouseX) = 0 && (abs( gamepad_axis_value(0, gp_axislh)) > 0.5 || abs(gamepad_axis_value(0, gp_axislv)) > 0.5))
{
	aimxInput = gamepad_axis_value(0, gp_axislh);
	aimyInput = gamepad_axis_value(0, gp_axislv);
	
	show_debug_message(aimxInput);
}

xOffset = aimxInput;
yOffset = aimyInput;


//Set the position of the blower at a certain offset to the bubble
x = obj_player.x + (xOffset * 65);
y = obj_player.y + (yOffset * 65);

//Set the blower to aim at the bubble
if(abs(x - obj_player.x) != 0 && abs(y - obj_player.y) != 0)
{
	image_angle = point_direction(x, y, obj_player.x, obj_player.y) - 90;
}


prevMouseX = mouse_x;
prevMouseY = mouse_y;
