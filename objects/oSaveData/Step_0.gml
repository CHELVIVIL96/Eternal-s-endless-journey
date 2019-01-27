/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if(accion == 1){
}

switch(accion){
	case 1:
		show_debug_message("creando un archivo ");
		show_message("guardando");
		ini_open("savedata.txt");
		ini_write_real("room1","score", scores);
		ini_write_string("room1","nombre", nombre);
		ini_close();
	
	break;
	case 2:
		ini_open("savedata.txt");
		ini_write_real("room2","score", scores);
		ini_write_string("room2","nombre", nombre);
		ini_close();
	break;
	case 3:
		ini_open("savedata.txt");
		ini_write_real("room3","score", scores);
		ini_write_string("room3","nombre", nombre);
		ini_close();
		instance_destroy(id)
	break;
	//consulta de datos
	
}