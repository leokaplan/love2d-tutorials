--[[
    So here we are drawing a red square!
    How does this work?
    Have you ever used a graphical editor such as MS Paint, Adobe Photoshop or Gimp?
    In this editors, you have to choose a color to draw and then draw. 
    Of course there is a default color (love's is white, as you have seen).
    But here we set it as red.
--]]

function love.load()
       
end
function love.update(dt)

end
function love.draw()
    --love.graphics.setColor(red,green,blue,alpha)
    --every color has an amount from 0 to 255, which gives us 255*255*255 = 16581375 colors
    --alpha is the transparency value, with 255 it's full opaque, with 0 it's full transparent
    --red is obviously: red = 255, green = 0 and blue = 0
    --experiment with the colors and alpha to see how this works
    love.graphics.setColor(255,0,0,255)
    love.graphics.rectangle("fill", 100, 100, 50, 50)
end
