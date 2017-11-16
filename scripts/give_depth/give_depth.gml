/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0767F2CA
/// @DnDArgument : "code" "var myplayer = instance_find(player,0);$(13_10)if distance_to_object(myplayer) < 100{$(13_10)	depth =-y;$(13_10)	}$(13_10)else$(13_10)	depth=0;"
var myplayer = instance_find(player,0);
if distance_to_object(myplayer) < 100{
	depth =-y;
	}
else
	depth=0;