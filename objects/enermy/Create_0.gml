/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 51E8637D
/// @DnDArgument : "code" "phy_fixed_rotation = 1$(13_10)$(13_10)enum EnermyDirection{$(13_10)    UP,$(13_10)    DOWN,$(13_10)    LEFT,$(13_10)    RIGHT$(13_10)}$(13_10)m_playerDirection = EnermyDirection.DOWN;$(13_10)$(13_10)m_isAttacking = false;$(13_10)m_isInSkill = false;$(13_10)m_fired = false;$(13_10)m_vertical = false;$(13_10)"
phy_fixed_rotation = 1

enum EnermyDirection{
    UP,
    DOWN,
    LEFT,
    RIGHT
}
m_playerDirection = EnermyDirection.DOWN;

m_isAttacking = false;
m_isInSkill = false;
m_fired = false;
m_vertical = false;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 45737D6E
/// @DnDArgument : "steps" "80"
alarm_set(0, 80);