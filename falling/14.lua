--[[
    constrains
--]]




function love.load()
    WINW,WINH = love.graphics.getDimensions()
    gravity = 10

    player = {}
    player.size = 50
    player.x = WINW/2 
    player.y = WINH - player.size
    player.speed = 0
    player.acc = 50
    player.color = {255,0,0,255}
    
    enemy = {}
    enemy.size = 50
    enemy.x = 100
    enemy.y = 0
    enemy.speed = 0
    enemy.color = {0,0,255,255}
    
end
function love.update(dt)
    if enemy.y > WINH then
        enemy.y = 0
    else
        enemy.y = enemy.y + enemy.speed*dt 
    end
    enemy.speed = enemy.speed + gravity*dt
    if player.x < WINW-player.x or player.x > 0 then
        player.x = player.x + player.speed*dt   
    end
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
