function love.load()
      x = 100 
      speed = 10
end
function love.update(dt)
      x = x + speed*dt   
end
function love.draw()
    love.graphics.setColor(255,0,0,255)
    love.graphics.rectangle("fill", x, 100, 50, 50)
end
function love.keypressed(key, isrepeat)
    if key == "a" then
        speed = -10
    elseif key == "d" then
        speed = 10
    end
end
