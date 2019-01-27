/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ini_open("savedata.txt");

room1score = ini_read_real("room1","segundos", 0);
room1nombre =  ini_read_string("room1","nombre", "");
room2score = ini_read_real("room2","segundos", 0);
room2nombre = ini_read_string("room2","nombre","");
room3score = ini_read_real("room3","segundos", 0);
room3nombre = ini_read_string("room3","nombre", "");



ini_close();