/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (opacidad >= 1){
	modo=-1;
	if(roomSeleccionado==1)
	{
		room_goto(room_hell);
	}
	if(roomSeleccionado==2)
	{
		room_goto(room_world);
	}
	if(roomSeleccionado==3)
	{
		room_goto(room0);
	}
	
	
}

if(opacidad <=0 ){
	instance_destroy();
}
