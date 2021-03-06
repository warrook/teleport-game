difHsp = (hsp_target - hsp);
if (abs(difHsp) < 0.1)
    hsp = hsp_target;
else if (inAir)
    hsp += difHsp * frc/6;
else hsp += difHsp * frc;

//Horizontal
if (!place_free(round(x+hsp),round(y)))
{
    while (place_free(round(x+sign(hsp)),round(y)))
        x += sign(hsp);
    hsp = 0;
}
x += round(hsp);

//Vertical
if (!place_free(round(x),round(y+vsp)))
{
    while (place_free(round(x),round(y+sign(vsp))))
        y += sign(vsp);
    vsp = 0;
}
if (inAir && vsp < 0 && !jumped) //Drag
    vsp += frc/5
y += round(vsp);

if (vsp > 40) vsp = 40
if (vsp < -40) vsp = -40

//End of step
if dashCD > 0 dashCD -= 1;
if leftCD > 0 leftCD -= 1;
if rightCD > 0 rightCD -= 1;

//Flags
inAir = place_free(x,y+1);