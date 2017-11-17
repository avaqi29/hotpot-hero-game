offset_x = 475;
offset_y =270;
x= camera_get_view_x(view_camera[0])+offset_x;
y= camera_get_view_y(view_camera[0])+offset_y;

if (device_mouse_check_button(1,mb_left))
{
	player.firebtn =0;
}
