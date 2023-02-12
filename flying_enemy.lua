--flying enemy

function spawn_enemy(y, max_x1, max_x2)
   enemy_data={y=y,
               x=max_x1,
               max_x1=max_x1,
               max_x2=max_x2,
               w=8,
               h=8,
               speed=0.3,
               flp=true,
               sp=96,
               anim=time(),
               anim2=time()}
   return enemy_data
end

function move_enemy(enemy)
   if time() - enemy.anim2 < 0.1 then
      return
   end
   if enemy.x > enemy.max_x2 and enemy.flp==false then
      enemy.flp = true
   end
   if enemy.x < enemy.max_x1 and enemy.flp==true then
      enemy.flp = false
   end
   enemy.x += enemy.flp and (enemy.speed * -1) or enemy.speed
   enemy.anim2 = time()
end

function animate_enemy(enemy)
   if time() - enemy.anim > 0.2 then
      enemy.sp += 1
      enemy.anim = time()
      if enemy.sp > 99 then
         enemy.sp = 96
      end
   end
end

function check_enemy_collisions(enemy)
   if collide_with_sprite(player, enemy, "left")
   or collide_with_sprite(player, enemy, "right")
   or collide_with_sprite(player, enemy, "down")
   or collide_with_sprite(player, enemy, "up") then
      return true
   end
   return false
end

function is_colliding_with_flying_enemy()
   for enemy in all(flying_enemies) do
      if check_enemy_collisions(enemy) then
         return true
      end
   end
   return false
end

function animate_enemies()
   for enemy in all(flying_enemies) do
      animate_enemy(enemy)
      move_enemy(enemy)
   end
end

function draw_enemies()
   for enemy in all(flying_enemies) do
      spr(enemy.sp, enemy.x * 8, enemy.y * 8, 1, 1, enemy.flp)
   end
end
