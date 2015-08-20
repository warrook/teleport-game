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

teleporting = true;
enabletp = false;

var bad = scr_findtarget(argument0,argument1);

if !bad
{
    x = targetx;
    y = targety;
}

enabletp = true;
teleporting = false;
