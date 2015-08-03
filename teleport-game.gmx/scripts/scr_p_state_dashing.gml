scr_getInputs();

//Normal Movement
//hsp = movespeed * (key_right - key_left);

if (dashing > 0)
{
    hsp = movespeed * (key_right - key_left) * dashspeed;
    vsp = 0;
    dashing -= 1;
}

if (dashing == 0 && place_free(x,y+1))
{
    vsp += grav
}

if (dashing == 0 && !place_free(x,y+1))
    state = p_state.normal;

if dashing == 0
    dashCD = 15;
    
scr_collideMove();
