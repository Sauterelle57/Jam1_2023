--variables

function _init()
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

  flying_enemies={spawn_enemy(62,12,15),
                  spawn_enemy(40,1,14),
                  spawn_enemy(29,1,8),
                  spawn_enemy(7,1,14)}

  gravity=0.4

  --simple camera
  cam_y=48*8

  --map limits
  map_start=0
  map_end=1024

  debug_time=time()
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