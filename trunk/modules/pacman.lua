pacman = {}
pacman.width = 32;
pacman.height = 32;
pacman.INITIAL_X = 224;
pacman.INITIAL_Y = 288;
pacman.ORIENTATION_UP = math.rad(270);
pacman.ORIENTATION_DOWN = math.rad(90);
pacman.ORIENTATION_LEFT = math.rad(180);
pacman.ORIENTATION_RIGHT = math.rad(0);
pacman.NORMAL_SPEED = 1;
pacman.SUPER_SPEED = 2;
pacman.QUAD = love.graphics.newQuad(0,0,32,32,32,32);

function pacman.reset()
  pacman.x = pacman.INITIAL_X;
  pacman.y = pacman.INITIAL_Y;
  pacman.dead = false
  pacman.super = false
  pacman.starting = true;
  pacman.orientation = pacman.ORIENTATION_RIGHT;
end

function pacman.update(dt)
  if pacman.orientation == pacman.ORIENTATION_UP then
    pacman.y = pacman.y - 1;
  end
  
  if pacman.orientation == pacman.ORIENTATION_DOWN then
    pacman.y = pacman.y + 1;
  end
  
  if pacman.orientation == pacman.ORIENTATION_LEFT then
    pacman.x = pacman.x - 1;
  end
  
  if pacman.orientation == pacman.ORIENTATION_RIGHT then
    pacman.x = pacman.x + 1;
  end
end

function pacman.keypressed(key, unicode)
  if key == "up" then
    pacman.orientation = pacman.ORIENTATION_UP;
  end
  
  if key == "down" then
    pacman.orientation = pacman.ORIENTATION_DOWN;
  end
  
  if key == "right" then
    pacman.orientation = pacman.ORIENTATION_RIGHT;
  end
  
  if key == "left" then
    pacman.orientation = pacman.ORIENTATION_LEFT;
  end
end

function pacman.draw()
  love.graphics.drawq(spriteSheet, pacman.QUAD, pacman.x, pacman.y,
    pacman.orientation, 1, 1, pacman.width/2, pacman.height/2);
end

function pacman.initialize_quads()
  
end

pacman.reset();
