--[[
    That's right! Off we go! We are moving!
    Note the update function.
    We are increasing x by 1 for every call of update, but what does that mean?
        What we are doing here is moving the square by 1 pixel for every frame.
        It is the same as increasing x in the draw function (try it!)
    What would happen if we increase the y instead of x? and the width? 
    can you scale the square over time, keeping the square shape?
    what would happen if you had a slower/faster pc and a different framerate? 
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
