scr_getInputs();

rate = 0.1;
alarm[0] = -1;
alarm[1] = -1;
alarm[2] = -1;

//Dashing Movement
if (dashing > 0)
{
    hsp = movespeed * hdir * dashspeed;
    vsp = vdir * dashspeed;
    dashing -= 1;
    if dashing == 0 dashCD = 95;
}

//When done dashing
if (dashing == 0)
{
    state = state.normal;
}

scr_collideMove();
