/// @description Insert description here
// You can write your code in this editor

hasScored = false;
canScore = true;

sprites = [spr_obstacle, spr_obstacle_blue, spr_obstacle_yellow]

function ChooseSpriteIndexed(index)
{
	sprite_index = sprites[index];
}

function ChooseSprite()
{
	rm = random_range(0,array_length(sprites));
	
	sprite_index = sprites[rm];
	
	return rm;
}
