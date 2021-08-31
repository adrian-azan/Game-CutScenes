/// @description Draw text over actor
event_inherited()

if (distance_to_object(obj_Player) < 16*2 && (talking || waiting)) 
{
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_set_color(c_yellow)
	draw_text(x+8,y-16,speech);	
}

