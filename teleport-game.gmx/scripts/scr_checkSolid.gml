//scr_checkSolid(real x, real y)
//var inst = instance_exists(instance_position(argument0,argument1,all));

if (instance_exists(instance_position(argument0,argument1,all)))
    return (instance_position(argument0,argument1,all)).solid;
