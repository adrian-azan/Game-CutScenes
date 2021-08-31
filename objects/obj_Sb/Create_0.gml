/// @description Dialogue Setup 
event_inherited()


dialogue = instance_create_depth(x,y,-100,obj_majorDialogue)
dialogue.image = spr_Dialogue_Sb
dialogue.sound = snd_Sb
dialogue.master = self
dialogue.W = sprite_width
dialogue.H = sprite_height

path = path_add()

