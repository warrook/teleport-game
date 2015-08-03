scr_getInputs();

//Normal Movement
//var hsp_target,difHsp;

if dashCD > 0 dashCD -= 1;

vsp += grav;
if (!place_free(x,y+1))
{
    if (key_jump)
        vsp = -jumpspeed
}

if (key_sprint && dashCD == 0 && (hsp != 0 || vsp < 0))
{
    state = p_state.dashing;
    dashing = 10;
}

scr_collideMove();
