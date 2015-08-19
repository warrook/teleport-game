//scr_checkSolidLine(int x1, int y1, int x2, int y2)
//Note: will simply confirm if a solid exists in this line or not, not how many

if (instance_exists(collision_line(argument0,argument1,argument2,argument3,all,false,true)))
    return (collision_line(argument0,argument1,argument2,argument3,all,false,true)).solid;
