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
	
	state = {}
	
	state.direction = {}
	state.direction.faceleft = false
	
	state.movement = {}
	state.movement.up = false
	state.movement.down = false
	state.movement.left = false
	state.movement.right = false
	
	width = 224
	height = 288
	
	
	
	pacman = {}
	pacman.pacmanRightOpen = quadPacmanRight

	
end
	
function love.draw()

	love.graphics.drawq(spriteSheet, quadPacmanRight, width, height)
	TiledMap_DrawNearCam(352,272)
	
end

function love.update()

	if state.movement.up then
		for i = 0, 1, 1 do
			height = height - 1		
		end			
	end
	
	if state.movement.down then
		for i = 0, 1, 1 do
			height = height + 1		
		end			
	end	
	
	if state.movement.left then
		if state.direction.faceleft then 
			quadPacmanRight:flip(true)
		end
		
		for i = 0, 1, 1 do
			width = width - 1		
		end			
	end	
	
	if state.movement.right then
		for i = 0, 1, 1 do
			width = width + 1		
		end			
	end	
end

function love.keypressed(key, unicode)
	
	if key == "up" then
		state.movement.up = true
	end
	
	if key == "down" then
		state.movement.down = true
	end	
	
	if key == "left" then
		
		if state.direction.faceleft == false then
			state.direction.faceleft = true
		end
		
		state.movement.left = true
		
	end		
	
	if key == "right" then
		state.movement.right = true
	end
end

function love.keyreleased(key)

	if key == "up" then
		state.movement.up = false
	end
	
	if key == "down" then
		state.movement.down = false
	end	
	
	if key == "left" then
		state.movement.left = false
	end		
	
	if key == "right" then
		state.movement.right = false
	end
end
	