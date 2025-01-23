/// @description Insert description here
// You can write your code in this editor

var shoot_Key = mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderr);

if(shoot_Key && isBlowerGame)
{
	var mousexDir =  x - obj_blower.x;
	var mouseyDir =  y - obj_blower.y;

	len = sqrt(sqr(mousexDir) + sqr(mouseyDir));

	newMousexDir = mousexDir / len;
	newMouseyDir = mouseyDir / len;

	vSpeed += newMouseyDir;
	hSpeed += newMousexDir;
}
else if(shoot_Key && isBirdGame)
{
	vSpeed += -shoot_Key * 10;
}

if(isBirdGame)
	vSpeed += gravityScale;

vSpeed = clamp(vSpeed, -vMaxSpeed, vMaxSpeed);
hSpeed = clamp(hSpeed, -hMaxSpeed, hMaxSpeed);

hSpeed = round(hSpeed);
vSpeed = round(vSpeed);

if(!place_meeting(x + hSpeed * blowPower, y, tilemap))
{
	x += hSpeed * blowPower;
}
else
{
	event_user(0);
}


if(!place_meeting(x, y + vSpeed * blowPower, tilemap))
{
	y += vSpeed * blowPower;
}
else
{
	event_user(0);
}


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


