/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

//var shoot_Key = mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, gp_shoulderr);
var shoot_Key = mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderr);

if(shoot_Key)
{
	vSpeed += -shoot_Key * 10;
}

vSpeed += gravityScale;

vSpeed = clamp(vSpeed, -vMaxSpeed, vMaxSpeed);
hSpeed = clamp(hSpeed, -hMaxSpeed, hMaxSpeed);

hSpeed = round(hSpeed);
vSpeed = round(vSpeed);

//if(!place_meeting(x + hSpeed * blowPower, y, tilemap))
//{
//	x += hSpeed * blowPower;
//}

//if(!place_meeting(x, y + vSpeed * blowPower, tilemap))
//{
//	y += vSpeed * blowPower;
//}

x += hSpeed * blowPower;
y += vSpeed * blowPower;

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

if(vSpeed > 0 && !shoot_Key)
{
	vSpeed -= drag;	
}
else if(vSpeed < 0 && !shoot_Key)
{
	vSpeed += drag;	
}

if(hSpeed > 0 && !shoot_Key)
{
	hSpeed -= drag;	
}
else if(hSpeed < 0 && !shoot_Key)
{
	hSpeed += drag;	
}



