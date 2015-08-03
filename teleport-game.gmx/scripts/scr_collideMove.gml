//Horizontal
if (!place_free(round(x+hsp),round(y)))
{
    while (place_free(round(x+sign(hsp)),round(y)))
        x += sign(hsp);
    hsp = 0;
}
x += hsp;

difHsp = (hsp_target - hsp);
if (abs(difHsp) < 0.5)
    hsp = hsp_target;
else
    hsp += difHsp * rate

    
//Vertical
if (!place_free(round(x),round(y+vsp)))
{
    while (place_free(round(x),round(y+sign(vsp))))
        y += sign(vsp);
    vsp = 0;
}
y += vsp;

if (vsp > 15) vsp = 15
if (vsp < -15) vsp = -15

//End of step
if dashCD > 0 dashCD -= 1;
if leftCD > 0 leftCD -= 1;
if rightCD > 0 rightCD -= 1;
//Flags
inAir = place_free(x,y+1);
