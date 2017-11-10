/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2CD5CAD3
/// @DnDArgument : "code" "phy_position_x = phy_position_x + m_speedX;$(13_10)phy_position_y = phy_position_y + m_speedY;$(13_10)$(13_10)depth = -y;$(13_10)$(13_10)var myplayer = instance_find(player,0);$(13_10)if distance_to_object(myplayer) < 2{$(13_10)		m_speedX =0;$(13_10)		m_speedY =0;$(13_10)		sprite_index = sp_exploration2;$(13_10)		variable = 1;$(13_10)		}$(13_10)		"
phy_position_x = phy_position_x + m_speedX;
phy_position_y = phy_position_y + m_speedY;

depth = -y;

var myplayer = instance_find(player,0);
if distance_to_object(myplayer) < 2{
		m_speedX =0;
		m_speedY =0;
		sprite_index = sp_exploration2;
		variable = 1;
		}