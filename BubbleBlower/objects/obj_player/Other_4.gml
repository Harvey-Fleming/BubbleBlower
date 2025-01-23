/// @description Insert description here
// You can write your code in this editor

if(room == rm_Bubble_Bird)
{
	isBirdGame = true;	
	isBlowerGame = false;
}
else if(room == rm_Bubble_Blower || room == rm_Bubble_Blower_1)
{
	isBlowerGame = true;
	isBirdGame = false;	
}
