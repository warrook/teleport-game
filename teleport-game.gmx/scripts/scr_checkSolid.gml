//scr_checkSolid(int x, int y)
//Expansion opportunity: argument3 is what to check for (here, it's solid)!

if (instance_exists(instance_position(argument0,argument1,all)))
    return (instance_position(argument0,argument1,all)).solid;
