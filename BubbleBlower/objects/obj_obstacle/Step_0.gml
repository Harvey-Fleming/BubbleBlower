/// @description Insert description here
// You can write your code in this editor

if(room == rm_Bubble_Bird)
{
	x -= 5;

}
else if(room == rm_Bubble_Bird_2)
{
	x -= 10;
}
else if(room == rm_Bubble_Bird_3)
{
	x -= 15;
}
else if(room == rm_Bubble_Bird_endless)
{
	x -= 5;
}

if(obj_player.x > x && !hasScored && canScore)
{
	hasScored = true;
	obj_bubble_bird_score.AddScore(1);
}
