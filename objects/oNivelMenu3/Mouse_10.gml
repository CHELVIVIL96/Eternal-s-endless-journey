/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_index=0;
if(oNivelMenu1.bloqueoParental==0 && oNivelMenu2.bloqueoParental2==0 && bloqueoParental3==0)
{
	audio_pause_all();

	sonido=audio_play_sound(GGJ_2019_Cielo,100,true);
	audio_sound_gain(sonido, 0, 0);
	audio_sound_gain(sonido, 0.5, 4000);
}