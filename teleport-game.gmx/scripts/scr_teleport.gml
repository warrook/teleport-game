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

var half_y = sprite_height/2;
var half_x = sprite_width/2;

for (var i = 0; i < sprite_height; i++) //Left true
{
    //Check each vertical pixel is clear or not on the left side from the bottom
    //and if it hasn't already tried moving too far
    if scr_checkSolid(targetx - half_x,targety + half_y - i) 
        if argument0 - targetx > -half_x
            targetx++;
        else break;
}
for (var i = 0; i < sprite_height; i++) //Right true
{
    if scr_checkSolid(targetx + half_x,targety + half_y - i)
        if argument0 - targetx < half_x
            targetx--;
        else break;
}
for (var i = 0; i < sprite_width; i++) //Top true
{
    if scr_checkSolid(targetx - half_x + i,targety - half_y)
        if argument1 - targety > -half_y
            targety++;
        else break;
}
for (var i = 0; i < sprite_width; i++) //Bottom true
{
    if scr_checkSolid(targetx - half_x + i,targety + half_y)
        if argument1 - targety < half_y
            targety--;
        else break;
}

if !place_free(targetx,targety)
{
    notele = 1;
    return 1;
}
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
