--variables

function _init()
  player={
    sp=0.5,
    x=59,
    y=59,
    w=8,
    h=8,
    flp=false,
    dx=0,
    dy=0,
    max_dx=2,
    max_dy=3,
    acc=0.9,
    boost=4,
    anim=0,
    running=false,
    jumping=false,
    falling=false,
    sliding=false,
    landed=false
  }

  gravity=0.4
  friction=0.9

  --simple camera
  cam_x=0

  --map limits
  map_start=0
  map_end=1024
end
