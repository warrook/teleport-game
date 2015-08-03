//Horizontal
if (!place_free(round(x+hsp),round(y)))
{
    while (place_free(round(x+sign(hsp)),round(y)))
        x += sign(hsp);
    hsp = 0;
}
x += hsp;

hsp_target = movespeed * (key_right - key_left);
difHsp = (hsp_target - hsp);

if (abs(difHsp) < 0.5)
    hsp = hsp_target;
else
    hsp += difHsp * 0.25

//Vertical
if (!place_free(round(x),round(y+vsp)))
{
    while (place_free(round(x),round(y+sign(vsp))))
        y += sign(vsp);
    vsp = 0;
}
y += vsp;

if (vsp > 15) vsp = 15
