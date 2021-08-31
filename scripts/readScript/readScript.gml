// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function readScript(scriptFile)
{
	
	
	sceneScript = ds_map_create()	
	sceneScript[?"order"] = ds_list_create()
	rawScript = load_csv(scriptFile)
	
	/*
	for (var i = 0; i < ds_list_size(actors);i++)
	{
		var actor = actors[|i];
		sceneScript[?actor] = ds_list_create()	
		
	}

	var rows = ds_grid_height(rawScript)
		
	for  (var i = 0; i < rows; i++)
	{
		var actor = rawScript[# 0,i]
		if (ds_map_exists(sceneScript, actor))
		{
			ds_list_add(sceneScript[?actor],rawScript[# 1,i])
			ds_list_add(sceneScript[?"order"], actor)
		}
	}
	*/
	return rawScript;
}