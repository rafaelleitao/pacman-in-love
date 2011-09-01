

function love.load()
  love.graphics.setMode(640, 480);
  love.graphics.setCaption('PacMan in LÖVE');
  pacman_left = love.graphics.newImage('assets/sprites/pacman.png');
  pacman_semi_opened = love.graphics.newQuad(0, 0, 32, 32, 106, 32);
  
end

function love.draw()
  love.graphics.drawq(pacman_left, pacman_semi_opened, 50, 50);
end