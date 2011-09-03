pacman = {}
pacman.width = 32;
pacman.height = 32;
pacman.INITIAL_X = 224;
pacman.INITIAL_Y = 288;
pacman.ORIENTATION_UP = 1;
pacman.ORIENTATION_DOWN = 2;
pacman.ORIENTATION_LEFT = 3;
pacman.ORIENTATION_RIGHT = 4;
pacman.NORMAL_SPEED = 1;
pacman.SUPER_SPEED = 2;

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
  love.graphics.drawq(spriteSheet, quadPacmanRight, pacman.x, pacman.y);
end

pacman.reset();
