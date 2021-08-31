/// @description CutScene Set up
index = 0 //which line is currently being read
scriptSize = 0
midLine = false //If an actor is partway through a line
actors = ds_map_create() //All actors/characters in the cutscene




/* EXAMPLE CUTSCENE SETUP
Script = readScript("introduction.csv") //Read Script
scriptSize = ds_grid_height(Script)

actors[?"TB"] = instance_find(obj_Tb, 0) //Find actors
actors[?"SB"] = instance_find(obj_Sb, 0)


actors[?"TB"].dialogue.talking = true //Kick start cutscene with first line
actors[?"TB"].dialogue.lines[|0] = Script[# 1, index]
*/
