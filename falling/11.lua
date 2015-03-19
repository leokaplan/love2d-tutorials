--[[
    Again, a silly lesson, but if you are familiar with modular programming or OO, you can see where are we going...

--]]

function love.load()
    player = {}
    player.x = 100 
    player.speed = 0
    player.color = {255,0,0,255}
    enemy = {}
    enemy.y = 0
    enemy.speed = 10
    enemy.color = {0,0,255,255}
end
function love.update(dt)
    player.x = player.x + player.speed*dt   
    enemy.y = enemy.y + enemy.speed*dt   
end
function love.draw()
    love.graphics.setColor(player.color)
    love.graphics.rectangle("fill", player.x, 100, 50, 50)
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
