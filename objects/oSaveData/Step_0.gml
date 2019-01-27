/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if(accion == 1){
}

switch(accion){
	case 1:
		show_debug_message("creando un archivo ");
		
		ini_open("savedata.txt");
		if(ini_read_real("room1","segundos",999) > global.seconds and ini_read_real("room1","minutos",999) > global.minutes ){
			show_message("guardando...");
			ini_write_real("room1","hora", global.hours);
			ini_write_real("room1","minutos", global.minutes);
			ini_write_real("room1","segundos", global.seconds);
			ini_write_string("room1","nombre", get_string("Ingrese su nombre","Best Score"));
		}else{
			//show_message("No han superado el best score");
		}
		
		
		ini_close();
		//room_goto(room_world);
	break;
	case 2:
		ini_open("savedata.txt");
		if(ini_read_real("room2","segundos",999) > global.seconds and ini_read_real("room2","minutos",999) > global.minutes ){
			show_message("guardando...");
			ini_write_real("room2","hora", global.hours);
			ini_write_real("room2","minutos", global.minutes);
			ini_write_real("room2","segundos", global.seconds);
			ini_write_string("room2","nombre", get_string("Ingrese su nombre",""));
		}else{
			//show_message("No han superado el best score");
		}
		ini_close();
		//room_goto(room_world);

	break;
	case 3:
		ini_open("savedata.txt");
		if(ini_read_real("room3","segundos",999) > global.seconds and ini_read_real("room3","minutos",999) > global.minutes ){
			show_message("guardando...");
			ini_write_real("room3","hora", global.hours);
			ini_write_real("room3","minutos", global.minutes);
			ini_write_real("room3","segundos", global.seconds);
			ini_write_string("room3","nombre", get_string("Ingrese su nombre",""));
		}else{
			//show_message("No han superado el best score");
		}
		ini_close();
		//room_goto(room_world);
	break;
	//consulta de datos
	
}