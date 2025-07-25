NUM = 0
IMAGE = nil
IMG_SCALE = 2.5

local window_width, window_height = love.window.getMode()

function love.draw()
	local imgx, imgy = calcule_image_center_points(IMAGE)
	love.graphics.draw(IMAGE, imgx, imgy, 0, IMG_SCALE, IMG_SCALE)
	love.graphics.print("Olá Mundo!", 350, 250)
	love.graphics.print(NUM, 350, 350)
	love.graphics.print(love.timer.getFPS(), 0, 0)
	love.graphics.print(imgx .. " " .. imgy, 350, 370)
	love.graphics.print("image width and height: " .. IMAGE:getWidth() .. " " .. IMAGE:getHeight(), 350, 390)
	love.graphics.print("window: " .. window_width .. " " .. window_height, 350, 410)
end

function love.load()
	IMAGE = love.graphics.newImage("cake.jpg")

	local f = love.graphics.newFont(20)
	love.graphics.setFont(f)
end

function love.update(dt)
	if love.keyboard.isDown("up") then
		NUM = NUM + 100 * dt -- isso irá acrescentar 100 por segundo ao num
	end
end

function love.mousepressed(_, _, button)
	if button == 1 then
		if IMG_SCALE < 4 and IMG_SCALE >= 0.5 then
			IMG_SCALE = IMG_SCALE - 0.1
		end
	end
end

function calcule_image_center_points(img)
	local ix, iy = img:getWidth() * IMG_SCALE, img:getHeight() * IMG_SCALE
	return ((window_width - ix) / 2), ((window_height - iy) / 2)
end
