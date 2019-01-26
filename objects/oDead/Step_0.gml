if(done==0)
{
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
		hsp = 0;
	}
	x = x + hsp;

	//Colision vertical
	if (place_meeting(x, y+vsp, oWall))
	{
		if(vsp>=0) 
		{
			done=1;
			image_index=1;
		}
		
		while(!place_meeting(x, y+sign(vsp),oWall))
		{
			y= y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
}





