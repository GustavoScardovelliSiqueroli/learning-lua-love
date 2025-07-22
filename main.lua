NUM = 0
IMAGE = nil

local window_width, window_height, _ = love.window.getMode()
local imgx, imgy = 0, 0

function love.draw()
	love.graphics.draw(IMAGE, imgx, imgy)
	love.graphics.print("Olá Mundo!", 350, 250)
	love.graphics.print(window_width, 350, 350)
end

function love.load()
	IMAGE = love.graphics.newImage("cake.jpg")
	-- imgx, imgy = -IMAGE:getWidth() / 2, -IMAGE:getHeight() / 2

	local f = love.graphics.newFont(20)
	love.graphics.setFont(f)
end

function love.update(dt)
	if love.keyboard.isDown("up") then
		NUM = NUM + 100 * dt -- isso irá acrescentar 100 por segundo ao num
	end
end

function love.mousepressed(x, y, button, istouch)
	if button == 1 then
		imgx = x -- move a imagem para onde o mouse foi clicado
		imgy = y
	end
end
