/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
death_time += delta_time;

if(death_time >= 3* 1000000 ){
	death_time=0;
	show_debug_message("SDOJEAFNOPWFM");
	vsp_bola = vsp_bola + grv;
}
y = y-vsp_bola;