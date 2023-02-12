--player

function player_update()
  --physics
  player.dy+=gravity
  
  --end game ?
  end_game()

  --controls
  if btn(⬅️) then
    player.dx-=player.acc
    player.running=true
    player.flp=true
  end
  if btn(➡️) then
    player.dx+=player.acc
    player.running=true
    player.flp=false
  end

  --jump
  if btnp(❎) then
  	if player.landed then
    player.dy-=player.boost
    player.landed=false
    elseif player.double_jump then
    player.dy=-3
    player.double_jump=false
   end
  end

  --check collision up and down
  if player.dy>0 then
    player.falling=true
    player.landed=false
    player.jumping=false

    player.dy=limit_speed(player.dy,player.max_dy)

    if collide_map(player,"down",0) then
      player.landed=true
      player.double_jump=true
      player.falling=false
      player.dy=0
      player.y-=((player.y+player.h+1)%8)-1
    end
  elseif player.dy<0 then
    player.jumping=true
    if collide_map(player,"up",1) then
      player.dy=0
    end
  end

  --check collision left and right
  if player.dx<0 then

    player.dx=limit_speed(player.dx,player.max_dx)

    if collide_map(player,"left",1) then
      player.dx=0
    end
  elseif player.dx>0 then

    player.dx=limit_speed(player.dx,player.max_dx)

    if collide_map(player,"right",1) then
      player.dx=0
    end
  end

  --stop move
  if player.running
  and not btn(⬅️)
  and not btn(➡️)
  and player.dx!=0 then
  	player.dx=0
  	player.running=false
  end

  player.x+=player.dx
  player.y+=player.dy

  --limit player to map
  if player.x<map_start then
    player.x=map_start
  end
  if player.x>map_end-player.w then
    player.x=map_end-player.w
  end
end

function player_animate()
  if player.jumping then
    player.sp=70
  elseif player.falling then
    player.sp=71
  elseif player.running then
    if time()-player.anim>.1 then
      player.anim=time()
      player.sp+=1
      if player.sp>69 then
        player.sp=66
      end
    end
  else --player idle
    if time()-player.anim>.3 then
      player.anim=time()
      player.sp+=1
      if player.sp>65 then
        player.sp=64
      end
    end
  end
end

function limit_speed(num,maximum)
  return mid(-maximum,num,maximum)
end

function end_game()
 if collide_map(player,"middle",3) then
		sfx(1)
	end

	if player.y>65*8
	or collide_map(player,"up",2)
	or collide_map(player,"down",2)
	or collide_map(player,"right",2)
	or collide_map(player,"left",2)
  or is_colliding_with_flying_enemy() then
		player.sp=72
		sfx(63)
		player.y=59*8
		player.x=8
		player.falling=false
		player.jumping=false
		player.running=false
		player.double_jump=false
	end
end
