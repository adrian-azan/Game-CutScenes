// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createMajorDialogue(Image, Sound, Script)
{

	var newDialogue = instance_create_depth(0,0,-100,obj_majorDialogue)
	
	newDialogue.lines = ds_list_create()
	
	var fin = file_text_open_read(Script)
	while (file_text_eof(fin) == false)
	{
		var line = file_text_readln(fin)		
	}
}



