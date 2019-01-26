//Gravedad
vsp = vsp + grv;

//Colision horizontal
if (place_meeting(x+hsp, y, oWall))
{
	//Si hay colision no se puede mover hasta que sea diferente de conocer el muro
	while(!place_meeting(x+sign(hsp), y ,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
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
	sprite_index = sEnemyA;
	image_speed = 0;
	//Cambiar de imagen, si salta o cae
	if (sign(vsp) > 0) image_index=1; else image_index=0;
}else{
	image_speed = 1;
	if(hsp==0)
	{
		sprite_index = sEnemy;
	}else{
		sprite_index=sEnemyR;	
	}
}
//Para escalar la imagen, correr para atras
if(hsp!=0) image_xscale = sign(hsp)
//image_xscale = -1;





