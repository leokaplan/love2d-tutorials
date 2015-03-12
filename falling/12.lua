--[[
    OK, out of vacation, let's get serious again.
    First things first: 
        WINW,WINH = love.graphics.getDimensions()
        this line bring us so many things!
            * it show us a function call that return things.
            * it show us a function call that return MULTIPLE things.
            * it show us how to keep those return values.
        now the semantics: 
            with this line we get two new variables: 
                WINW and WINH, representing the width and the height of the canvas.
                
    Did you notice the way the enemy box fell? Yes, it was accelerating.
    I presume that you took a physics course in high school. 
        Remember when you learned about the position relative to time under constant accelearation (gravity) ?
        If not:
            http://en.wikipedia.org/wiki/Kinematics#Particle_trajectories_under_constant_acceleration
            http://en.wikipedia.org/wiki/Projectile_motion
        You thought you would never use it, right? Well, wrong.
        We are building a basic physics engine, so we need physics. 
        in love.update I did a direct translation of the theory above
        
    and finally, we will use WINH and WINW (we didn't got them for nothing...) 
        we will set the player intial position in x 
            to the center of the screen (half of it's width)
        we will set the player initial position in y to
            the bottom of the screen. 
                why did I put the -50? what happens if you remove it?
--]]


function love.load()
    WINW,WINH = love.graphics.getDimensions()
    player = {}
    player.x = WINW/2 
    player.speed = 0
    player.color = {255,0,0,255}
    enemy = {}
    enemy.y = 0
    enemy.speed = 10
    enemy.color = {0,0,0,255}
    gravity = 10
end
function love.update(dt)
    player.x = player.x + player.speed*dt   
    enemy.y = enemy.y + enemy.speed*dt + gravity*dt*dt/2  
end
function love.draw()
    love.graphics.setColor(player.color)
    love.graphics.rectangle("fill", player.x, WINH - 50, 50, 50)
    love.graphics.setColor(enemy.color)
    love.graphics.rectangle("fill", 100, enemy.y, 50, 50)
end
function love.keypressed(key, isrepeat)
    if key == "a" then
        player.speed = -10
    elseif key == "d" then
        player.speed = 10
    end
end
function love.keyreleased(key)
    player.speed = 0
end
