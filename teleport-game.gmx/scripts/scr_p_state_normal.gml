scr_getInputs();

//Normal Movement

frc = 0.25;
dashing = 0;
hdir = key_right - key_left;
hsp_target = movespeed * hdir;

if inAir
    vsp += grav;

//Jumping
if (!inAir)
    jumps = 0;
if (key_jump_pressed)
{
    if (!inAir)
    {
        jumped = true;
        vsp = -jumpspeed
    }
    if (inAir && jumps < jumpsmax)
    {
        var phi = point_direction(0,0,hsp,vsp);
        var h = point_distance(0,0,hsp,vsp);
        //deltahsp = lengthdir_x(h,phi);
        deltavsp = lengthdir_y(h,phi);
        //hsp += deltahsp;
        vsp = -deltavsp + grav;
        vspbuffer = vsp;
        jumps++;
    }
}
if (!key_jump && jumped)
{
    vsp = max(vsp,-jumpspeed/2);
    jumped = 0;
}
//Move to Dash state
if (dashCD == 0)
{
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
//Move to Teleport state
//if (mouse_right_pressed)
    //state = state.teleport;

scr_collideMove();
