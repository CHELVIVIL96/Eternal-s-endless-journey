/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if(paso){

tiempo += 1/room_speed * delta_time;
if(tiempo > 2 ){
	audio_pause_all();
	sonido=audio_play_sound(GGJ_2019_Tierra,100,true);
	audio_sound_gain(sonido, 0, 0);
	audio_sound_gain(sonido, 0.5, 4000);
	//show_message(camera_get_view_height(oCamera)/2);
	//show_message(camera_get_view_width(oCamera)/2);
	room_goto(room_world);

	//var obj=instance_create_depth(oCamera.x-150,oCamera.y + 200,false,oMensajeGanar);
	//instance_destroy(id)
	//paso=false;
}

}
