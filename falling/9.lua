--[[
    Yes, yes... nothing changed.
    But our code was a mess.
    Let's organize it! How? 
    ~*~ Tables ~*~
    Look at our new table player: 
        see how it is declared? player = {}
        then we can set fields for it, as you can see in 
            player.x and player.speed
        now, speed and x are attributes of player, meaning that they are linked to our player
    I changed everywhere. 
    you are probably asking yourself if love is a table, since we use the dot notation, e.g. love.load()
        yes. try to print love at the screen (the variable, not the text)
            it will show something like "table: 0x00000"
--]]




function love.load()
    player = {}
    player.x = 100 
    player.speed = 0
end
function love.update(dt)
    player.x = player.x + player.speed*dt   
end
function love.draw()
    love.graphics.setColor(255,0,0,255)
    love.graphics.rectangle("fill", player.x, 100, 50, 50)
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
