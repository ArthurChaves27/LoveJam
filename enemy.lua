love = require("love")
math.randomseed(os.time())

enemy = {

    sides = {-60, love.graphics.getWidth() + 60},
    speed = 2,
    x =  60,
    y = 500,

    UpdateEnemy = function(dt, x)

        if enemy.x < x then
            enemy.x = enemy.x + enemy.speed
        elseif enemy.x > x then
            enemy.x = enemy.x - enemy.speed
        end
        
    end,

    DrawEnemy = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.rectangle("fill", enemy.x, enemy.y, 50, 60)
        love.graphics.setColor(1, 1, 1)
    end
}
return enemy