//Acciones del jugador (gamepad_axis_value(0, gp_axislh) < 0)
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_space = keyboard_check_pressed(vk_space) || (gamepad_button_check_pressed(0, gp_face1)); 
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_shift = keyboard_check(vk_lshift)||(gamepad_button_check(0, gp_shoulderr));

if (key_left) or (key_right) or (key_space)
{
	controller=0;
}
if(abs(gamepad_axis_value(0,gp_axislh)) > 0.2)
{
	key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
	key_right = max(gamepad_axis_value(0,gp_axislh),0);
	controller=1;
}
if(gamepad_button_check_pressed(0,gp_face1))
{
	key_space=1;
	controller=1;
}
//Por si se aprecia las 2 al mismo tiempo se pueda mover en el aire
var move = key_right - key_left;

//Velocidad horizontal es igual a movimiento por velocidad de caminado
hsp = move * walkspeed;

//Gravedad
vsp = vsp + grv;

if(key_shift)
{
	walkspeed=5;
}else{
	walkspeed=3;
}

//show_debug_message(place_meeting(x, y+1, oWall));
if (place_meeting(x, y+1, oWall))
{
	doubleJump=maxJumps;
}

if (key_space) and (doubleJump > 0)
{show_debug_message(doubleJump);
	doubleJump-=1;
	vsp=-4;
}

if(efectoVolar==1)
{
	death_time += delta_time;

	if (death_time >= 2 * 1000000) {
	   efectoVolar=0;
	}
}


if(efectoVolar==1)and(key_space)
{
	vsp = -3;
	//show_debug_message(cantidadSaltos);
	if(place_meeting(x, y+1, oWall))
	{
		efectoVolar=0;
	}
}

//Colision horizontal
if (place_meeting(x+hsp, y, oWall))
{
	//Si hay colision no se puede mover hasta que sea diferente de conocer el muro
	while(!place_meeting(x+sign(hsp), y ,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Colision vertical
if (place_meeting(x, y+vsp, oWall))
{
	//Si hay colision no se puede mover hasta que sea diferente de conocer el muro
	while(!place_meeting(x, y+sign(vsp),oWall))
	{
		y= y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

//Animation
//Si brinca

if(!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerA;
	image_speed = 100;
	//Cambiar de imagen, si salta o cae
	if (sign(vsp) > 0) image_index=1; else image_index=0;
}else{
	image_speed = 1;
	if(hsp==0)
	{
		sprite_index = sPlayer;
	}else{
		sprite_index=sPlayerR;	
	}
}
//Para escalar la imagen, correr para atras
if(hsp!=0) image_xscale = sign(hsp);
//image_xscale = -1;




