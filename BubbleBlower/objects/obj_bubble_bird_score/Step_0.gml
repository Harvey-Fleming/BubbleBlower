/// @description Insert description here
// You can write your code in this editor

if(room == rm_Bubble_Bird)
{
	totalScoreNeeded = 10;

}
else if(room == rm_Bubble_Bird_2)
{
	totalScoreNeeded = 20;
}
else if(room == rm_Bubble_Bird_3)
{
	totalScoreNeeded = 30;
}


if(room == rm_Bubble_Bird && score >= 10)
{
	room_goto_next();

}
else if(room == rm_Bubble_Bird_2 && score >= 20)
{
	room_goto_next();
}
else if(room == rm_Bubble_Bird_3 && score >= 30)
{
	room_goto(rm_menu);
}
