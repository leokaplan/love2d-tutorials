--[[
    Read our code. 
    It's a little repetitive, isn't it?
    I just made every variable "bound" to a table, except for gravity
    Also, all our arbitrary values are in love.load function.
    This is just a organization lesson. 
    
--]]


function love.load()
    WINW,WINH = love.graphics.getDimensions()
    gravity = 10

    player = {}
    player.size = 50
    player.x = WINW/2 
    player.y = WINH - player.size
    player.speed = 0
    player.acc = 20
    player.color = {255,0,0,255}
    
    enemy = {}
    enemy.size = 50
    enemy.x = 100
    enemy.y = 0
    enemy.speed = 10
    enemy.color = {0,0,0,255}
end
function love.update(dt)
    player.x = player.x + player.speed*dt   
    enemy.y = enemy.y + enemy.speed*dt + gravity*dt*dt/2  
end
function love.draw()
    love.graphics.setColor(player.color)
    love.graphics.rectangle("fill", player.x, player.y, player.size, player.size)
    love.graphics.setColor(enemy.color)
    love.graphics.rectangle("fill", enemy.x , enemy.y, enemy.size, enemy.size)
end
function love.keypressed(key, isrepeat)
    if key == "a" then
        player.speed = -player.acc
    elseif key == "d" then
        player.speed = player.acc
    end
end
function love.keyreleased(key)
    player.speed = 0
end
