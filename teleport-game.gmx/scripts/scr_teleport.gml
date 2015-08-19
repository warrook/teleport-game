//scr_teleport(desired x, desired y)

/*
*Right click*
Check if safe to teleport player to cursor
    If safe, check moved/not
        If cursor remains still, no angle change and teleport
        If cursor moves out of range, calculate angle from destination to cursor and 
    Else do nothing
*/

notele = 0;

if scr_checkSolid(mouse_x,mouse_y)
{
    notele = 1;
    return 1;
}   
//var targetx, targety;

targetx = argument0 - (sprite_width/2 - sprite_xoffset);
targety = argument1 - (sprite_height/2 - sprite_yoffset);

var half_x = sprite_width/2;
var half_y = sprite_height/2;

//Do horizontal, then vertical
var x_moves = 0;
var y_moves = 0;

var h_free,v_free;
h_free = false;
v_free = false;

var closest_d = 99999;
var closest_x, closest_y;

if place_free(argument0,argument1)
    return 0;

for (var i = 0; i < half_x; i++)
{
    for (var j = 0; j < half_y; i++)
    {
        var d = point_distance(argument0,argument1,half_x + i,half_y + j)
        if (d < closest_d)
        {
            closest_d = d;
            closest_x = i;
            closest_y = j;
        }
    }
}

if closest_d == 99999
{
    notele = 1;
    return 1;
}
else
    return 0;

/*
repeat (half_x)
{
    if scr_checkSolid(targetx - half_x, targety) //Check left center solid
    {
        if scr_checkSolid(targetx + half_x, targety) //Check right center solid, if so break
            break;
        targetx++;
    }
    else if scr_checkSolid(targetx + half_x, targety)
        targetx--;
    else
    {
        h_free = true;
        break;
    }
}

if h_free
{
    repeat(half_y)
    {
        if scr_checkSolid(targetx, targety - half_y) //Check top center solid
        {
            if scr_checkSolid(targetx, targety + half_y) //Check bottom center solid, if so break
                break;
            targety++;
        }
        else if scr_checkSolid(targetx, targety + half_y)
            targety--;
        else
        {
            v_free = true;
            break;
        }
    }
}
*/

/*
repeat(half_y)
{
    if scr_checkSolidLine(targetx - half_x, targety - half_y, targetx + half_x, targety - half_y) //Check along top edge
    {
        if scr_checkSolidLine(targetx - half_x, targety + half_y, targetx + half_x, targety + half_y)
            break;
        targety++;
    }
    else if scr_checkSolidLine(targetx - half_x, targety + half_y, targetx + half_x, targety + half_y) //Check along bottom edge
        targety--;
    else break;
}*/

if !place_free(targetx,targety)
{
    notele = 1;
    return 1;
}

/*
for (var i = 0; i < sprite_height; i++) //Left true
{
    //Check each vertical pixel is clear or not on the left side from the bottom
    //and if it hasn't already tried moving too far
    if scr_checkSolid(targetx - half_x,targety + half_y - i) 
        if (x_moves < half_x)
        {
            targetx++;
            x_moves++;
        }
        else break;
}
for (var i = 0; i < sprite_height; i++) //Right true
{
    if scr_checkSolid(targetx + half_x,targety + half_y - i)
        if x_moves < half_x
        {
            targetx--;
            x_moves++;
        }
        else break;
}
for (var i = 0; i < sprite_width; i++) //Top true
{
    if scr_checkSolid(targetx - half_x + i,targety - half_y)
        if y_moves < half_y
        {
            targety++;
            y_moves++;
        }
        else break;
}
for (var i = 0; i < sprite_width; i++) //Bottom true
{
    if scr_checkSolid(targetx - half_x + i,targety + half_y)
        if y_moves < half_y
        {
            targety--;
            y_moves++;
        }
        else break;
}*/

    /*
    if (!place_free(targetx - 1,targety)) //Check Left
    {
        if (place_free(targetx + sprite_width,targety)) //If free space to the right
            targetx += 1;
    }
    if (!place_free(targetx + 1,targety)) //Check Right
    {
        if (place_free(targetx - sprite_width,targety)) //If free space to the left
            targetx -= 1;
    }
    if (!place_free(targetx,targety - 1)) //Check up
    {
        if (place_free(targetx,targety + sprite_width)) //If free space down
            targety += 1;
    }
    if (!place_free(targetx,targety + 1)) //Check down
    {
        if (place_free(targetx,targety - sprite_width)) //If free space up
            targety -= 1;
    }*/
//SEVERE PROBLEM WITH INNER CORNERS
