/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

	contado += delta_time;

	if (contado >= 5 * 1000000) {
		if(opacidadd<0){
	   instance_destroy(instacia);
		}
		else{
		opacidadd = opacidadd - 0.05;
	}
	}
