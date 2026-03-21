love = require("love")
bullet = require("projectile")
--math.randomseed(os.time())
--TODO: random side spawn and Automated Spawn
enemy = {

    list = {},
    --sides = {-60, 700},
    --witchSide = math.random(1, 2),
    life = 2,
    speed = 2,
    dead = false,

    NewEnemy = function (x, y)
        local b = {

            x = x,
            y = y,
            life = enemy.life,
            dead = enemy.dead

        }
        table.insert(enemy.list, b)
        return b
    end,

    UpdateEnemy = function(dt, x)
        
        for i = #enemy.list, 1, -1 do
            local b = enemy.list[i]

            if b.life == 0 then
                    b.dead = true
            end

            if not b.dead then

                if b.x < x then
                    b.x = b.x + enemy.speed
                elseif b.x > x then
                    b.x = b.x - enemy.speed
                end

            if bullet.CheckRecCol(b.x, b.y, 60, 70) then
                    b.life = b.life - 1 
                end

            end
        end   
    end,

    DrawEnemy = function()

        for i, b in ipairs(enemy.list) do
            if not b.dead then
                love.graphics.setColor(1, 0, 0)
                love.graphics.rectangle("fill", b.x, b.y, 60, 70)
                love.graphics.setColor(1, 1, 1)
            end
        end
    end
}
return enemy