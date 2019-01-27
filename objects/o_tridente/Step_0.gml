/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
death_time += delta_time;

	if (death_time >= 2 * 1000000) {
		if(!afuera){
			 image_index = 1;
			 afuera=true;
		}
		else{
		afuera=false;
		image_index = 0;
		}
	 
	}
	 