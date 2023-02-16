--update and draw

function _update()
   player_update()
   pelerin_update()
   player_animate()
   pelerin_animate()
   
   --end game ?
   end_game()
 
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
      if player.win==true then
         draw_win()
      end
      spr(player.sp,player.x,player.y,1,1,player.flp)
          spr(pelerin.sp,pelerin.x,pelerin.y,1,1,pelerin.flp)
 end
 
 function draw_win()
    local _y=35
    rectfill(0,_y,128,_y+50,1)
    print("press x to replay !",40,_y+8,7)
    print("well played !",40,_y+24,7)
 --	if btn(❎) then
 --		reset()
 --	end
 end
 