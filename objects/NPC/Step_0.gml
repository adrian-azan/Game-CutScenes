/// @description Calculate NPC motion

vSpd += .25
clamp(vSpd,-4,vSpdMax)

if (place_meeting(x+2*facing,y-2,obj_collide))
{

	facing *= -1;
	image_xscale *= -1;	
}

if (place_meeting(x+2*facing,y+2,obj_NPC_jumpSignal))
{
	event_user(0) //Jump
}

//
if (canJump == true and place_meeting(x,y+2,obj_collide))
{
	vSpd = 0;	
}

if (vSpd < 0 and place_meeting(x,y-2,obj_collide))
{
	vSpd *= -1	
}
