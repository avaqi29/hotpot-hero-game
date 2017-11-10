/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B73DB0B
/// @DnDArgument : "code" "$(13_10)if(m_isAttacking && sprite_index == sp_player_leftAtt $(13_10)|| sprite_index == sp_player_rightAtt$(13_10)|| sprite_index == sp_player_frontAtt$(13_10)|| sprite_index == sp_player_backAtt)$(13_10){$(13_10)    m_isAttacking = false;$(13_10)}$(13_10)/*$(13_10)if(m_isInSkill && sprite_index == spr_ysera_skill)$(13_10){$(13_10)    m_isInSkill = false;$(13_10)}*/"

if(m_isAttacking && sprite_index == sp_player_leftAtt 
|| sprite_index == sp_player_rightAtt
|| sprite_index == sp_player_frontAtt
|| sprite_index == sp_player_backAtt)
{
    m_isAttacking = false;
}
/*
if(m_isInSkill && sprite_index == spr_ysera_skill)
{
    m_isInSkill = false;
}*//**/