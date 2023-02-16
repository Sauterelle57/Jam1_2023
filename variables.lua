--variables

function _init()
  music(0,0,7)
player={
  sp=64,
  x=7,
  y=59*8,
  w=8,
  h=8,
  flp=false,
  dx=0,
  dy=0,
  max_dx=1.5,
  max_dy=3,
  acc=0.9,
  boost=4,
  anim=0,
  running=false,
  jumping=false,
  double_jump=true,
  falling=false,
  landed=false,
  win=false
}

pelerin={
  sp=96,
 x=7,
 y=6*8,
 w=8,
 h=8,
 flp=false,
 dx=0,
 dy=0,
 max_dx=1.5,
 max_dy=3,
 acc=0.9,
 boost=4,
 anim=0,
 aim=0
 }

gravity=0.4

--simple camera
cam_y=48*8
--cam_y=6

--map limits
map_start=0
map_end=1024
end

function reset()
    music(0,0,7)
    player={
  sp=0.5,
  x=7,
  y=59*8,
  w=8,
  h=8,
  flp=false,
  dx=0,
  dy=0,
  max_dx=1.5,
  max_dy=3,
  acc=0.9,
  boost=4,
  anim=0,
  running=false,
  jumping=false,
  double_jump=true,
  falling=false,
  landed=false,
  win=false
}
end