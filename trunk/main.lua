love.filesystem.load('assets/maps/tiledmap.lua')()
love.filesystem.load('lib/TiledMapLoader.lua')()

function love.load()
	love.graphics.setMode(640, 480)
	love.graphics.setCaption('PacMan in LOVE')
	love.graphics.setBackgroundColor(0,0,0)
	love.graphics.clear()
	
	spriteSheet = love.graphics.newImage('assets/sprites/spritesheet.png')
	quadPacmanRight = love.graphics.newQuad(0,0,32,32,32,32)
	TiledMap_Load('assets/maps/tiledmap.tmx')	
	require('modules.pacman');
end
	
function love.draw()
  pacman.draw();
	TiledMap_DrawNearCam(352,272)	
end

function love.update(dt)
  pacman.update(dt);
end

function love.keypressed(key, unicode)
  pacman.keypressed(key,unicode);
end