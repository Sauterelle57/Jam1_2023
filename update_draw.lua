--update and draw

function _update()
    player_update()
    player_animate()
  
    --simple camera
    cam_y=player.y-64+(player.h/2)
    if cam_y>48*8 then
       cam_y=48*8
    end
    if cam_y<5 then
       cam_y=5
    end
    if cam_y>map_end-128 then
       cam_y=map_end-128
    end
    camera(0,cam_y)
  end
  
  function _draw()
    cls()
    map(0,0)
    spr(player.sp,player.x,player.y,1,1,player.flp)
  end
  