--[[
    Dang! What is it? A blue screen? An error message?
    This time we will have to read our code, fix it and just then we will be able to run it.
    (As a matter of fact, we will run the next lesson...)
    First things first, let's discuss what this program should do.
    I will talk about the new tools used then I will talk what they are aiming to do and last, but not least, I will explain why it is not working and how we fix it.
    In this lesson we will see some new stuff:
        * how to print text on the screen
        * how to receive user input from the keyboard
        * conditionals
    In the draw function we can see the print function. It's pretty straightforward: 
        you give it a text and a point to draw and it prints the text on the screen.
    Now let's see the keypressed function.
    This function is called every time the user presses a keyboard button.
        It gives us the key that was pressed and if it was repeately pressed.
    The content of the function is simple: 
        if the key pressed by the user is 'a' then we will walk to the left 
        if it is 'd' we will walk to the right
            what will happen if we don't press anything?   
            what will happen if we press 'm', for example?
            what will happen if we press 'a' and 'd' at the same time? and 'a' and 'c'?
            what would happen if we just used if instead of elseif?
            And if we just used else?
            This kind of hipotetical questions should always be popping into your head.
    If you read the error message you can guess where the problem is.
    The problem is that we can't access dt from the keypressed function.
    Although lua variables have global scope by default, function parameters have a local scope. 
    They just exist during the function execution.
    How do we solve it? Well, we will create a new variable, speed and change it in keypressed. 
    But we will use it to update the position just in the update function.
    Don't worry, I have already fixed for the next lesson.
    Besides that, we changed our speed to 10, since 1px/s is too slow.
--]]


function love.load()
      x = 100 
end
function love.update(dt)
      x = x + 10*dt   
end
function love.draw()
    love.graphics.setColor(255,0,0,255)
    love.graphics.rectangle("fill", x, 100, 50, 50)
    --love.graphics.print(text,x,y)
    --text should be quoted, so it is not interpreted as a variable
    love.graphics.print("press 'a' or 'd' to change the square orientation",0,0)
end
function love.keypressed(key, isrepeat)
    if key == "a" then
        x = x - 10*dt
    elseif key == "d" then
        x = x + 10*dt
    end
end
