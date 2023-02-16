-- vilain pelerin


  --check collision left and right
  --if player.dx<0 then

  --  player.dx=limit_speed(player.dx,player.max_dx)
  --elseif player.dx>0 then
  --  player.dx=limit_speed(player.dx,player.max_dx)
  --end

  --player.x+=player.dx
  --player.y+=player.dy

--end

function pelerin_update()
	if pelerin.x>=14*8 then
		pelerin.aim=-1.7
		pelerin.flp=true
	elseif pelerin.x<=7 then
		pelerin.aim=1.7
		pelerin.flp=false
	end
	pelerin.x+=pelerin.aim
end

function pelerin_animate()
 if time()-pelerin.anim>.07 then
   pelerin.anim=time()
   pelerin.sp+=1
   if pelerin.sp>98 then
     pelerin.sp=96
   end
 end
end