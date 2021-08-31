/// @description Display Dialogue

if (talking || waiting) 
{
	//Play actors voice
	if (talking and !audio_is_playing(sound))
		audio_play_sound(sound,10, false)
	else if (waiting and audio_is_playing(sound))
		audio_stop_sound(sound)
		
	var X = display_get_gui_width()*.1;
	var Y = display_get_gui_height()*.8
	var textX = display_get_gui_width()*.15;
	var textY = display_get_gui_height()*.85
	
	//draw actor dialogue image
	if (image != noone)
		draw_sprite_ext(image,-1,0,Y,4,4,0,c_white,1)
	
	//draw dialogue box
	draw_set_color(c_black)
	draw_rectangle(X,Y,X*3,Y+60,false)
	
	//draw text
	draw_set_halign(fa_left)
	draw_set_valign(fa_left)
	draw_set_color(c_white)
	draw_text(textX,textY,speech);	
}

