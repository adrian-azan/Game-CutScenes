event_inherited()

Script = readScript("introduction.csv")
scriptSize = ds_grid_height(Script)

actors[?"TB"] = instance_find(obj_Tb, 0)
actors[?"SB"] = instance_find(obj_Sb, 0)

actors[?"TB"].dialogue.image = noone
actors[?"SB"].dialogue.image = noone



actors[?"TB"].dialogue.talking = true
actors[?"TB"].dialogue.lines[|0] = Script[# 1, index]


finished = false