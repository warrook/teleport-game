scr_getInputs();

frc = 0.1;
dashCD = 95;

//Dashing Movement
if (dashing > 0)
{
    hsp = movespeed * hdir * dashspeed * 1.3;
    vsp = vdir * dashspeed;
    dashing--;
}
    
//When done dashing
if (dashCD > 0 && dashing == 0)
{
    state = state.normal;
}

scr_collideMove();