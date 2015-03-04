function love.load()
      x = 100 
end
function love.update(dt)
      x = x + 10*dt   
end
function love.draw()
    love.graphics.setColor(255,0,0,255)
    love.graphics.rectangle("fill", x, 100, 50, 50)
end
function love.keypressed(key, isrepeat)
    if key == "a" then
        x = x - 10*dt
    elseif key == "d" then
        x = x + 10*dt
    end
end
