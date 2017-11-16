var temp_joystick;
offset_x = 75;
offset_y =270;
x= camera_get_view_x(view_camera[0])+offset_x;
y= camera_get_view_y(view_camera[0])+offset_y;
temp_joystick = 0;

if (device_mouse_check_button(temp_joystick,mb_left))
{
var temp_dir = point_direction(x,y,device_mouse_x(temp_joystick),device_mouse_y(temp_joystick));

    //Dir
    if (point_distance(x,y,device_mouse_x(temp_joystick),device_mouse_y(temp_joystick)) < 60*var_screan_size)
    {
    var_joystick_active = true;
    
    var_direction = temp_dir;
    
    var_x_dir = device_mouse_x(temp_joystick)-x;
    var_y_dir = device_mouse_y(temp_joystick)-y;
    }
    
    //Speed
    if (var_joystick_active = true && point_distance(x,y,device_mouse_x(temp_joystick),device_mouse_y(temp_joystick)) > 30*var_screan_size)
    {
      
    }
    
    
        if (var_joystick_active = true && point_distance(x,y,device_mouse_x(temp_joystick),device_mouse_y(temp_joystick)) > 60*var_screan_size)
        {
        var_direction = temp_dir;
        
        var_x_dir = lengthdir_x(60*var_screan_size,temp_dir);
        var_y_dir = lengthdir_y(60*var_screan_size,temp_dir);
		
		if(abs(var_x_dir)>abs(var_y_dir)){
			if(var_x_dir>0){
				player.rightrun =0;
			}
			else{
				player.leftrun =0;
			}
		}
		else{
		if(var_y_dir>0){
			player.downrun=0;
			}
			else{
				player.uprun=0;
			}
		
		}
        }
}
else
{
var_joystick_active = false;

var_x_dir = 0;
var_y_dir = 0;
player.leftrun =1;
player.rightrun =1;
player.uprun =1;
player.downrun =1;
}