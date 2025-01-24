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

if(obj_player.x > x && !hasScored && canScore)
{
	hasScored = true;
	obj_bubble_bird_score.AddScore(1);
}
