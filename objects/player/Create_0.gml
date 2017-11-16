/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 51E8637D
/// @DnDArgument : "code" "phy_fixed_rotation = 1$(13_10)$(13_10)enum PlayerDirection{$(13_10)    UP,$(13_10)    DOWN,$(13_10)    LEFT,$(13_10)    RIGHT$(13_10)}$(13_10)m_playerDirection = PlayerDirection.DOWN;$(13_10)$(13_10)m_isAttacking = false;$(13_10)m_isInSkill = false;$(13_10)m_fired = false;$(13_10)$(13_10)//image_speed=0$(13_10)//image_index=0$(13_10)"
phy_fixed_rotation = 1

enum PlayerDirection{
    UP,
    DOWN,
    LEFT,
    RIGHT
}
m_playerDirection = PlayerDirection.DOWN;

m_isAttacking = false;
m_isInSkill = false;
m_fired = false;

//image_speed=0
//image_index=0