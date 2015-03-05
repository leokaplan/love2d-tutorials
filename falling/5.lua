--[[
    Have you noticed the difference?
    We are now using the dt parameter.
    I guess you've gotten curious about it.
    If you took a physics or calculus class you are familiar with the concept of dt.
    If you haven't, I will explain it now: 
        it's the amount of time that have passed since the last update call.
    If you recall the physics class, when we work with constant speed our position formula is:
        position = initial_position + speed*delta_time
            our delta_time is dt,
            our initial_position is our last position,
            our speed is 1 pixel per millisecond. 
                note how we changed our speed from pixel/frame to pixel/time:
                it means that in every computer it will have the same speed.
        thus:
        x = x + speed*dt
        
    pop quiz:
        can we change our position on draw now?(using a pixel/time velocity)
        can you accelerate the movement?
        (tips: what does acceleration means? 
               how does it relates to the velocity and with the position?)
            
--]]
function love.load()
      x = 100 
end
function love.update(dt)
      x = x + 1*dt   
end
function love.draw()
    love.graphics.setColor(255,0,0,255)
    love.graphics.rectangle("fill", x, 100, 50, 50)
end
