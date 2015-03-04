function love.load()
    WINW,WINH = love.graphics.getDimensions()
    player = {}
    player.x = WINW/2 
    player.speed = 0
    player.acc = 20
    player.color = {255,0,0,255}
    player.w = 50
    player.h = 50
    enemy = {}
    enemy.x = 100
    enemy.y = 0
    enemy.speed = 10
    enemy.color = {0,0,255,255}
    enemy.w = 30
    enemy.h = 30
    gravity = 30
end
function love.update(dt)
    player.x = player.x + player.speed*dt   
    enemy.y = enemy.y + enemy.speed*dt + gravity*dt*dt/2  
end
function love.draw()
    love.graphics.setColor(player.color)
    love.graphics.rectangle("fill", player.x, WINH - player.h, player.w, player.h)
    love.graphics.setColor(enemy.color)
    love.graphics.rectangle("fill", enemy.x, enemy.y, enemy.w, enemy.h)
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
