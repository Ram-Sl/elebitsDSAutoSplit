state("DeSmuME_0.9.11_x64")
{
	int zone: 0x44A848, 0x55C;
	int health: 0x44A848, 0x1B0;
	int face: 0x44A848, 0x230;
	int black: 0x08A3C258, 0xF34;
	int blackPost: 0x08A3C258, 0xF04;
}
init
{
	vars.splitCount = 0;
}

start
{
	if(current.zone == 1 && current.health == 0){
		vars.splitCount = 0;
		return true;
	}
}
split
{
	if(current.zone == 9 && vars.splitCount == 0){
		vars.splitCount = vars.splitCount + 1;
		return true;
	}
	if(current.zone == 27 && vars.splitCount == 1){
		vars.splitCount = vars.splitCount + 1;
		return true;
	}
	if(current.zone == 63 && vars.splitCount == 2){
		vars.splitCount = vars.splitCount + 1;
		return true;
	}
	if(current.zone == 125 && vars.splitCount == 3){
		vars.splitCount = vars.splitCount + 1;
		return true;
	}
	if(current.zone == 139 && vars.splitCount == 4){
		vars.splitCount = vars.splitCount + 1;
		return true;
	}
	if(current.zone == 154 && vars.splitCount == 5){
		vars.splitCount = vars.splitCount + 1;
		return true;
	}
	if(current.zone == 112 && vars.splitCount == 6 && current.face == 2 && current.black == 0){
		vars.splitCount = vars.splitCount + 1;
	}
	if(vars.splitCount == 7 && current.blackPost == 34878140){
		return true;
	}
}