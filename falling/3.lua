--[[
    Yes, it is the same as the last one.
    But this time we are using a variable to represent our position on the x axis.
    In the next lesson we will start to move things!
--]]
function love.load()
    -- see how a variable is declared? just choose a name and a initial value
    -- what would happen if you set this to other values? 
    -- can you make a variable for y too?
    x = 100 
end
function love.update(dt)
    
end
function love.draw()
    love.graphics.setColor(255,0,0,255)
    --here we are using our variable
    love.graphics.rectangle("fill", x, 100, 50, 50)
end
