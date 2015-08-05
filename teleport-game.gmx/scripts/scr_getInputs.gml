//States:
// normal
// dash
// teleport

key_left = keyboard_check(ord('A'));
key_right = keyboard_check(ord('D'));
key_up = keyboard_check(ord('W'));
key_down = keyboard_check(ord('S'));

key_left_pressed = keyboard_check_pressed(ord('A'));
key_right_pressed = keyboard_check_pressed(ord('D'));
key_up_pressed = keyboard_check_pressed(ord('W'));
key_down_pressed = keyboard_check_pressed(ord('S'));

mouse_left = mouse_check_button(mb_left);
mouse_right = mouse_check_button(mb_right);

mouse_left_pressed = mouse_check_button_pressed(mb_left);
mouse_right_pressed = mouse_check_button_pressed(mb_right);

key_jump = keyboard_check(vk_space);
key_sprint = keyboard_check(vk_shift);

key_jump_pressed  = keyboard_check_pressed(vk_space);
key_sprint_pressed = keyboard_check_pressed(vk_shift);

if (key_sprint_pressed)
    toggle = !toggle;
