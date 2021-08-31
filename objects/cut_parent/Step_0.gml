/// @description Progress through script

//Cutscene destroys itself when finished
if (index >= scriptSize)
	instance_destroy(self)


//Iterate over actors and see if any are talking or waiting
midLine = false
for (var key = ds_map_find_first(actors); !is_undefined(key); key = ds_map_find_next(actors,key))
{
	if (actors[?key].dialogue.talking == true || actors[?key].dialogue.waiting == true)
	{
		midLine = true
	}	
}


//Increment dialogue if noone is talking
if (midLine == false)
	index += 1
else
	exit

//Sets actors dialogue to current line in the script
var actor = Script[# 0, index]
if (!is_undefined(actors[?actor]))
{
	actors[?actor].dialogue.lines[|0] = Script[# 1, index]
	actors[?actor].dialogue.talking = true
}







