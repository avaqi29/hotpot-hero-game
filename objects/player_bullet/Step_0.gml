/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2CD5CAD3
/// @DnDArgument : "code" "phy_position_x = phy_position_x + m_speedX;$(13_10)phy_position_y = phy_position_y + m_speedY;$(13_10)$(13_10)depth = -y;$(13_10)		$(13_10)for (i = 0; i < instance_number(enermy); i += 1)$(13_10)   {$(13_10)	var myenermy = instance_find(enermy,i);	$(13_10)	if distance_to_object(myenermy) < 2{$(13_10)		m_speedX =0;$(13_10)		m_speedY =0;$(13_10)		sprite_index = sp_exploration;$(13_10)		variable = 1;$(13_10)	}$(13_10)   }"
phy_position_x = phy_position_x + m_speedX;
phy_position_y = phy_position_y + m_speedY;

depth = -y;
		
for (i = 0; i < instance_number(enermy); i += 1)
   {
	var myenermy = instance_find(enermy,i);	
	if distance_to_object(myenermy) < 2{
		m_speedX =0;
		m_speedY =0;
		sprite_index = sp_exploration;
		variable = 1;
	}
   }