/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if(paso){

tiempo += 1/room_speed * delta_time;
if(tiempo > 2 ){
	audio_pause_all();
sonido=audio_play_sound(GGJ_2019_Tierra,100,true);
	audio_sound_gain(sonido, 0, 0);
	audio_sound_gain(sonido, 0.5, 4000);
	
	room_goto(room_world);
}

}
