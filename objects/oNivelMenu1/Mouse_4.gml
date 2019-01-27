/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

	bloqueoParental=1;
	var roomInf=instance_create_depth(0,0,false,oTransition);

	roomInf.roomSeleccionado=1;
	bloqueoParental=1;
	audio_pause_all();

	sonidoddd=audio_play_sound(GGJ_2019_Infierno,100,true);
	audio_sound_gain(sonidoddd, 0, 0);
	audio_sound_gain(sonidoddd, 0.5, 4000);
