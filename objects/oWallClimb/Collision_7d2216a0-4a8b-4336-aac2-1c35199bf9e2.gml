/// @description Colosion X
key_up = keyboard_check(vk_up) || keyboard_check(ord("W")) || (gamepad_axis_value(0, gp_axislv)<0);
key_space = keyboard_check(vk_space); 

show_debug_message(gamepad_axis_value(0, gp_axislv));
//Efecto trampolin
//oPlayer.vsp = -8;
if(key_up!=0)
{
	oPlayer.vsp = -(key_up * climbSpeed);
	if (key_space!=0)
	{
		oPlayer.vsp = -4;
	}
}