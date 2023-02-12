--update and draw

function print_debug()
   if time()-debug_time > 1 then
      for k, v in pairs(player) do
      printh(k..': '..tostr(v))
      end
      printh('-----------------------')
      debug_time=time()
   end
end

function _update()
   player_update()
   player_animate()

   animate_enemies()

   print_debug()
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
   draw_enemies()
 end
 