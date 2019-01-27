//Recargar destino
if (instance_exists(follow))
{
	xTo=follow.x;
	yTo=follow.y;
}

//Recargar posicion del objeto
x += (xTo - x) / 25;
y += (yTo - y) / 25

x=clamp(x,view_w_half, room_width-view_w_half);
y=clamp(y,view_h_half, room_height-view_h_half);

//Recargar la vista
camera_set_view_pos(cam, x-view_w_half,y-view_h_half);
if(layer_exists("Mountain"))
{
	layer_x("Mountain",x/2);
}
if(layer_exists("Three"))
{
	layer_x("Three",x/4);
}

if(layer_exists("Piedra1"))
{
	layer_x("Piedra1",x/3);
}
if(layer_exists("Piedra2"))
{
	layer_x("Piedra2",x/3);
}
if(layer_exists("Piedra3"))
{
	layer_x("Piedra3",x/3);
}
if(layer_exists("Piedra4"))
{
	layer_x("Piedra4",x/3);
}
if(layer_exists("Piedra5"))
{
	layer_x("Piedra5",x/3);
}
if(layer_exists("Flamas1"))
{
	layer_x("Flamas1",x/2);
}
if(layer_exists("Flamas2"))
{
	layer_x("Flamas2",x/2);
}
if(layer_exists("Flamas3"))
{
	layer_x("Flamas3",x/2);
}
if(layer_exists("Flamas4"))
{
	layer_x("Flamas4",x/2);
}



