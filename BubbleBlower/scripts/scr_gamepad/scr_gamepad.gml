// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gamepad(){

}


//GAMEPAD - 0
//KEYBOARD - 1
//NEITHER - 3
function CheckAimDevice(prevMouseY, prevMouseX)
{	
	if(abs(gamepad_axis_value(0, gp_axislh)) > 0.2 || abs(gamepad_axis_value(0, gp_axislv)) > 0.2 )
	{ 
		return 0;
	}
	else if(abs(gamepad_axis_value(0, gp_axisrh)) > 0.2 || abs(gamepad_axis_value(0, gp_axisrv)) > 0.2 )
	{ 
		return 0;
	}
	
	if(prevMouseY != mouse_y || prevMouseX != mouse_x)
	{
		return 1;	
	}
		return 3;	
}