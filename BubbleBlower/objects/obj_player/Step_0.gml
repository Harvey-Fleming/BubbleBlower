/// @description Insert description here
// You can write your code in this editor

//var shoot_Key = mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, gp_shoulderr);
var shoot_Key = mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderr);

	var mousexDir =  x - obj_blower.x;
	var mouseyDir =  y - obj_blower.y;

	len = sqrt(sqr(mousexDir) + sqr(mouseyDir));

	newMousexDir = mousexDir / len;
	newMouseyDir = mouseyDir / len;

	if(shoot_Key)
	{
		vSpeed += newMouseyDir;
		hSpeed += newMousexDir;
	}

//vSpeed += gravityScale;


//vSpeed += -shoot_Key * 2;

vSpeed = clamp(vSpeed, -vMaxSpeed, vMaxSpeed);
hSpeed = clamp(hSpeed, -hMaxSpeed, hMaxSpeed);

hSpeed = round(hSpeed);
vSpeed = round(vSpeed);

x += hSpeed;
y += vSpeed;

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


