/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(instance_exists(obj_controls))
{
	instance_destroy(obj_controls);
}
else
{
	instance_create_layer(x + 400, y, "Instances", obj_controls)	;
}

