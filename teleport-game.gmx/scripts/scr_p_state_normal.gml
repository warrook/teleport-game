scr_getInputs();

//Normal Movement

rate = 0.25;
dashing = 0;
hdir = key_right - key_left;
hsp_target = movespeed * hdir;

vsp += grav;
if (!place_free(x,y+1))
{
    if (key_jump)
        vsp = -jumpspeed
}

if (dashCD == 0)
{
    if (key_jump && place_free(x,y+1))
    {
        vdir = -2;
        state = state.dash;
        dashing = 10;
    }
    if (key_left_pressed)
    {
        if (leftCD > 0)
        {
            vdir = 0;
            state = state.dash;
            dashing = 10;
        }
        if leftCD < 1
            leftCD = 15;
    }
    if (key_right_pressed)
    {
        if (rightCD > 0)
        {
            vdir = 0;
            state = state.dash;
            dashing = 10;
        }
        if rightCD < 1
            rightCD = 15;
    }
}

scr_collideMove();
