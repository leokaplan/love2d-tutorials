function love.load()
    WINW,WINH = love.graphics.getDimensions()
    player = {}
    player.x = WINW/2 
    player.speed = 0
    player.acc = 20
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
        player.speed = -acc
    elseif key == "d" then
        player.speed = acc
    end
end
function love.keyreleased(key)
    player.speed = 0
end
