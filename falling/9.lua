--[[
      How did you do it?
      Oh, you haven't? 
      Well, it is probably my fault:
      I did not tell you about love.keyreleased...
      It's the opposite of keypressed.
      We didn't use any conditionals because it doesn't matter the key that was released.
      We also set the initial sped to 0, but probably you did that too, right?
--]]

function love.load()
      x = 100 
      speed = 0
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
function love.keyreleased(key)
    speed = 0
end
