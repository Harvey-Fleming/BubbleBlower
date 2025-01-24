/// @description Insert description here
// You can write your code in this editor

var centerpoint = random_range(500,900);

var inst = instance_create_layer(1400, centerpoint, "instances", obj_obstacle);

inst.image_xscale = 4;
inst.image_yscale = 4;
var index = inst.ChooseSprite();

var inst2 = instance_create_layer(1400, centerpoint - random_range(600, 800), "instances", obj_obstacle);

inst2.image_xscale = 4;
inst2.image_yscale = -4;
inst2.canScore = false;
inst2.ChooseSpriteIndexed(index);

if(room == rm_Bubble_Bird)
{
	alarm_set(0, 180);

}
else if(room == rm_Bubble_Bird_2)
{
	alarm_set(0, 100);
}




