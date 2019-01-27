/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


	var roomInf=instance_create_depth(0,0,false,oTransition);
	bloqueoParental2=1;
	roomInf.roomSeleccionado=2;
	
	audio_pause_all();

	sonidoddd=audio_play_sound(GGJ_2019_Tierra,100,true);
	audio_sound_gain(sonidoddd, 0, 0);
	audio_sound_gain(sonidoddd, 0.5, 4000);

