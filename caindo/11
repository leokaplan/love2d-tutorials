function love.load()
    player = {}
    player.x = 100 
    player.speed = 0
    enemy = {}
    enemy.y = 0
    enemy.speed = 10
end
function love.update(dt)
    player.x = player.x + player.speed*dt   
    enemy.y = enemy.y + enemy.speed*dt   
end
function love.draw()
    love.graphics.setColor(255,0,0,255)
    love.graphics.rectangle("fill", player.x, 100, 50, 50)
    love.graphics.setColor(0,0,255,255)
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
