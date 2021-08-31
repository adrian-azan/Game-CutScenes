/// @description Dialogue system
x = master.x
y = master.y

if (ds_list_empty(lines)) exit;

if (!talking && !waiting)
	speech = ""

//Player intiatiates dialogue
if (distance_to_object(obj_Player) < 16*2 && keyboard_check_pressed(ord("E")))
	talking = true;



//Skips to end of line if player activates
if (talking && (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"))))
	l = string_length(lines[|line])-1

//
if (talking)
{
	l +=.5;
	speech = string_copy(lines[|line],1,l) //Copies line up until letter <l>
	
	//if line is over
	if (l > string_length(lines[|line]))
		{
			talking = false;
			waiting = true
			l = 0
		}
}

//Advance to the next line of dialogue
if (waiting && (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"))))
{

	waiting = false;
	talking = true;
	line += 1
	
	//checks if last line of all dialogue
	if (line >= ds_list_size(lines))
	{
		talking = false
		line = 0
	}
}
