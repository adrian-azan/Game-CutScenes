/// @description Stage Directions

event_inherited();

if (index == 4 and midLine == false)
{
	actors[?"SB"].image_xscale *= -1
}

if (index == 10 and midLine == false)
{
	with(actors[?"TB"])
	{
		path = path_add()
		path_add_point(path,x,y,8)
		path_add_point(path,x-16,y,8)		
		path_set_closed(path,false)
		path_start(path,8,path_action_stop,0)
	}
}

if (index == 11 and midLine == false)
{
	with(actors[?"SB"])
	{
		path = path_add()
		path_add_point(path,x,y,8)
		path_add_point(path,x+16,y,8)		
		path_set_closed(path,false)
		path_start(path,8,path_action_stop,0)
	}
}

if (index == 12 and midLine == false)
{
	with(actors[?"TB"])
	{
		path = path_add()
		path_add_point(path,x,y,8)
		path_add_point(path,x-16,y,8)		
		path_set_closed(path,false)
		path_start(path,8,path_action_stop,0)
	}
}

if (index == 13 and midLine == false)
{
	with(actors[?"SB"])
	{
		path = path_add()
		path_add_point(path,x,y,8)
		path_add_point(path,x+16,y,8)		
		path_set_closed(path,false)
		path_start(path,8,path_action_stop,0)
	}
}

if (index == 14 and midLine == false)
{
	with(actors[?"TB"])
	{
		path = path_add()
		path_add_point(path,x,y,8)
		path_add_point(path,x-16,y,8)		
		path_set_closed(path,false)
		path_start(path,8,path_action_stop,0)
	}
}

if (index == 15 and midLine == false)
{
	actors[?"SB"].image_xscale *= -1
	with(actors[?"SB"])
	{
		path = path_add()
		path_add_point(path,x,y,8)
		path_add_point(path,x-64,y,8)		
		path_set_closed(path,false)
		path_start(path,8,path_action_stop,0)
	}
}
if (index == 16 and midLine == false)
{	
	with(actors[?"TB"])
	{
		facing = -1
		hSpd = 1
	}
}

var tb = actors[?"TB"]
var sb = actors[?"SB"]

if (point_distance(tb.x,tb.y,sb.x,sb.y) <64)
	tb.hSpd = 0



