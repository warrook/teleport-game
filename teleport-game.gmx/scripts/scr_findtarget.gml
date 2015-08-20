if scr_checkSolid(argument0,argument1)
{
    notele = 1;
    return 1;
}

if place_free(argument0,argument1)
{
    targetx = argument0;
    targety = argument1;
    return 0;
}

var half_x = sprite_width/2;
var half_y = sprite_height/2;

//Currently doesn't really do anyting because no teleport happens yet
//var targetx, targety;
targetx = argument0 - (half_x - sprite_xoffset);
targety = argument1 - (half_y - sprite_yoffset);

//var closest_d = 99999;
//var closest_x, closest_y;

closest_d = 99999;

//var size = 2; //Speeding it up by increasing cell size

for (var i = -half_x; i < half_x; i++)
{
    for (var j = -half_y; j < half_y; j++)
    {
        if place_free(targetx + i,targety + j)
        {
            var d = point_distance(targetx,targety,targetx + i,targety + j)
            if d < closest_d
            {
                closest_d = d;
                closest_x = i;
                closest_y = j;
            }
        }
    }
}

if closest_d == 99999
{
    notele = 1;
    return 1;
}
else
{
    targetx += closest_x;
    targety += closest_y;
    if !place_free(targetx,targety)
    {
        notele = 1;
        return 1;
    }
    return 0;
}
