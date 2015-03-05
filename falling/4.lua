--[[
    That's right! Off we go! We are moving!
    Note the update function.
    We are increasing x by 1 for every call of update, but what does that mean?
        
--]]

function love.load()
      x = 100 
end
function love.update(dt)
      x = x + 1   
end
function love.draw()
    love.graphics.setColor(255,0,0,255)
    love.graphics.rectangle("fill", x, 100, 50, 50)
end
