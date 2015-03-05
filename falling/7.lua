--[[
    Once again, everything changed.
    Now, for the first time, you were invited to affect our simulated world with your free will.
    This lesson isn't very interesting, it's just to you see it working.
    But one thing that is bothering me is that the square doesn't stop and it starts moving by itself.
    It is not a great avatar if it has some kind of free will.
    Can you change the code so that the square moves only when the user presses 'a' and 'd'?
--]]


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
