--[[
    methods
--]]

player = {}

function player.collide()
    player.x = WINW/2 
end
function player.load()
    player.size = 50
    player.x = WINW/2 
    player.y = WINH - player.size
    player.speed = 0
    player.acc = 50
    player.color = {255,0,0,255}
end
function player.update(dt)
    if player.x < WINW-player.x or player.x > 0 then
        player.x = player.x + player.speed*dt   
    end
end
function player.draw()
    love.graphics.setColor(player.color)
    love.graphics.rectangle("fill", player.x, player.y, player.size, player.size)
end

function player.keyreleased(key)
    player.speed = 0
end

function player.keypressed(key, isrepeat)
    if key == "a" then
        player.speed = -player.acc
    elseif key == "d" then
        player.speed = player.acc
    end
end
--------------------------------------------------
enemy = {}
function enemy.collide()
    enemy.y = 0
end
function enemy.load()
    enemy.size = 50
    enemy.x = 100
    enemy.y = 0
    enemy.speed = 0
    enemy.color = {0,0,255,255}

end
function enemy.update(dt)
    if enemy.y > WINH then
        enemy.y = 0
    else
        enemy.y = enemy.y + enemy.speed*dt 
    end
    enemy.speed = enemy.speed + gravity*dt
end
function enemy.draw()
    love.graphics.setColor(enemy.color)
    love.graphics.rectangle("fill", enemy.x , enemy.y, enemy.size, enemy.size)
end

-------------------------------------------------


function collide(a,b)
    return (a.x < b.x + b.size and a.x > b.x and a.y < b.y + b.size and a.y > b.y) 
end



------------------------------------------------
function love.load()
    WINW,WINH = love.graphics.getDimensions()
    gravity = 10
    player.load()
    enemy.load()    
end
function love.update(dt)
    player.update(dt)
    enemy.update(dt)
    if collide(player,enemy) or collide(enemy,player) then
        player.collide()
        enemy.collide()
    end
end
function love.draw()
    player.draw()
    enemy.draw()
end
function love.keypressed(key, isrepeat)
    player.keypressed(key, isrepeat)
end
function love.keyreleased(key)
    player.keyreleased(key)
end
