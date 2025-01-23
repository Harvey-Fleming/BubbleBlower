/// @description Insert description here
// You can write your code in this editor

x -= 5;

if(obj_player.x > x && !hasScored && canScore)
{
	hasScored = true;
	obj_bubble_bird_score.AddScore(1);
}
