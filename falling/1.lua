--[[
    This is the most basic löve app. It just draws a square on the screen.
    The Löve game engine uses a very well known model:
        a initializer = the load function, which will be called on startup and never again.
        a step function = the update function, which will be called on every tick.
                            A tick is the smallest unit of time in the computer.
                            We'll discuss this function later on.
        a renderer = the draw function, which will draw things on the screen every frame.
                            Löve has a coordinate system based on the upper-left of the screen
                            it means that y=0 is the top line and x = 0 is the left line
                            increasing y will go down, increasing x will go right
--]]


function love.load()
       
end
function love.update(dt)

end
function love.draw()
    --love.graphics.rectangle(mode, x, y, w, h)
    --mode can be "line" or "fill"
    -- try playing with these values
    love.graphics.rectangle("fill", 100, 100, 50, 50)
end

