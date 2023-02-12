--collisions

function collide_map(obj,aim,flag)
  --obj = table needs x,y,w,h
  --aim = left,right,up,down
 
  local x=obj.x  local y=obj.y
  local w=obj.w  local h=obj.h
 
  local x1=0	 local y1=0
  local x2=0  local y2=0
 
  if aim=="left" then
    x1=x-1  y1=y
    x2=x    y2=y+h-1
 
  elseif aim=="right" then
    x1=x+w-1    y1=y
    x2=x+w      y2=y+h-1
 
  elseif aim=="up" then
    x1=x+2    y1=y-1
    x2=x+w-3  y2=y
    
  elseif aim=="middle" then
    x1=x-16  y1=y-16
    x2=x+16  y2=y+16
 
  elseif aim=="down" then
    x1=x+2      y1=y+h
    x2=x+w-3    y2=y+h
  end
 
  --pixels to tiles
  x1/=8    y1/=8
  x2/=8    y2/=8
 
  if fget(mget(x1,y1), flag)
  or fget(mget(x1,y2), flag)
  or fget(mget(x2,y1), flag)
  or fget(mget(x2,y2), flag) then
    return true
  else
    return false
  end
 
 end

 function collide_with_sprite(obj1, obj2, aim)
  --obj = table needs x,y,w,h
  --aim = left,right,up,down
 
  local x1=0	local y1=0
  local x2=0  local y2=0
 
  if aim=="left" then
    x1=obj1.x-1  y1=obj1.y
    x2=obj1.x    y2=obj1.y+obj1.h-1
 
  elseif aim=="right" then
    x1=obj1.x+obj1.w-1    y1=obj1.y
    x2=obj1.x+obj1.w      y2=obj1.y+obj1.h-1
 
  elseif aim=="up" then
    x1=obj1.x+2    y1=obj1.y-1
    x2=obj1.x+obj1.w-3  y2=obj1.y
    
  elseif aim=="middle" then
    x1=obj1.x-16  y1=obj1.y-16
    x2=obj1.x+16  y2=obj1.y+16
 
  elseif aim=="down" then
    x1=obj1.x+2      y1=obj1.y+obj1.h
    x2=obj1.x+obj1.w-3    y2=obj1.y+obj1.h
  end
 
  --pixels to tiles
  x1/=8    y1/=8
  x2/=8    y2/=8
 
  if is_point_in_obj2(x1,y1, obj2)
  or is_point_in_obj2(x2,y1, obj2)
  or is_point_in_obj2(x1,y2, obj2)
  or is_point_in_obj2(x2,y2, obj2) then
    return true
  else
    return false
  end
 end

function is_point_in_obj2(x, y, obj2)
  if x >= obj2.x
  and x <= obj2.x + 1
  and y >= obj2.y
  and y <= obj2.y + 1 then
    return true
  end
  return false
end
