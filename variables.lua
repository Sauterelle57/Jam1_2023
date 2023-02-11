--variables

function _init()
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
      landed=false
    }
  
    gravity=0.4
  
    --simple camera
    cam_y=48*8
  
    --map limits
    map_start=0
    map_end=1024
  end
  