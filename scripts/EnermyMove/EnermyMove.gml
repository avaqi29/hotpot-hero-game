//image_speed = 0.25;
m_trigger = false;
if(!m_isAttacking && !m_isInSkill)
{
    var myplayer = instance_find(player, 0);
    var deltaX = myplayer.x - phy_position_x;
    var deltaY = myplayer.y - phy_position_y;
    var mySpeed = 2;
	
	if(abs(deltaX)<2){
		m_vertical = true;
		m_trigger = true;
	}
	if(abs(deltaY)<2){
		m_vertical = false;
		m_trigger = true;
	}
	if(!m_vertical){
    if(deltaX > mySpeed){
        phy_position_x += mySpeed;
		sprite_index = sp_player_rightWalk;    
        //image_xscale = -1;
        m_playerDirection = EnermyDirection.RIGHT;
    }
    else if(deltaX < -mySpeed){
        phy_position_x -= mySpeed;
		sprite_index = sp_player_leftWalk;
        //image_xscale = 1;
        m_playerDirection = EnermyDirection.LEFT;
    }
    else{
        phy_position_x += deltaX;
		sprite_index = sp_player_rightWalk;    
        //image_xscale = -1;
        m_playerDirection = EnermyDirection.RIGHT;
    }
	}
	else{
    if(deltaY > mySpeed){
        phy_position_y += mySpeed;
		sprite_index = sp_player_frontWalk;
        m_playerDirection = EnermyDirection.DOWN;
    }
    else if(deltaY < -mySpeed){
        phy_position_y -= mySpeed;
		sprite_index = sp_player_backWalk;    
        m_playerDirection = EnermyDirection.UP;
    }
    else{
        phy_position_y += deltaY;
		sprite_index = sp_player_frontWalk;
        m_playerDirection = EnermyDirection.DOWN;
    }}
	
	if(m_trigger)
    {
      m_isAttacking = true;
      switch(m_playerDirection)
      {
      case EnermyDirection.UP:
        sprite_index = sp_player_backAtt;
        break;
      case EnermyDirection.DOWN:
        sprite_index = sp_player_frontAtt;
        break;
      case EnermyDirection.LEFT:
        sprite_index = sp_player_leftAtt;
        break;
      case EnermyDirection.RIGHT:
        sprite_index = sp_player_rightAtt;
        break;
      }  
      image_index = 0;
      m_fired = false;
	  m_trigger = false;
    }
}

if(sprite_index == sp_player_leftAtt 
|| sprite_index == sp_player_rightAtt
|| sprite_index == sp_player_frontAtt
|| sprite_index == sp_player_backAtt){
    if(image_index > 1 && m_fired == false){ 
        var magicBullet; 
		magicBullet = instance_create_layer(x , y , "Instances", player_bullet);
        var deltaX = 0;
        var deltaY = 0;
        switch(m_playerDirection)
        {
        case EnermyDirection.UP:
          magicBullet.m_speedY = -10;
          magicBullet.image_angle = 270;
          deltaY = -89;
          break;
        case EnermyDirection.DOWN:
          magicBullet.m_speedY = 10;
          magicBullet.image_angle = 90;
          deltaY = 7;
          break;
        case EnermyDirection.LEFT:
          magicBullet.m_speedX = -10;
          deltaX = -65;
          deltaY = -33;
          break;
        case EnermyDirection.RIGHT:
          magicBullet.m_speedX = 10;
          magicBullet.image_angle = 180;
          deltaX = 65;
          deltaY = -33;
          break;
        } 
        magicBullet.phy_position_x += deltaX;
        magicBullet.phy_position_y += deltaY;
        m_fired = true;
    }
}
/*
if(sprite_index == spr_ysera_skill){
    if(image_index > 2 && m_fired == false){
        instance_create(x, y, obj_ysera_skill_effect);
        m_fired = true
    }
}
*/
