love = require("love")

    Projectile = {

        list = {},
        speed = 1000,

        NewBullet = function (x, y, dirX, dirY)
            --Here i'm creating a table of a bullet and adding it to the list
            local b = {
            
                x = x,
                y = y,
                dirX = dirX,
                dirY = dirY,
                speed = Projectile.speed

            }
            table.insert(Projectile.list, b)
            return b
        end,

        
        UpdateProj = function(dt)
            --Go through the list and updating each bullet 
            for i = #Projectile.list, 1, -1 do
                local b = Projectile.list[i]

                b.x = b.x + b.dirX * Projectile.speed*dt
                        
                b.y = b.y + b.dirY * Projectile.speed*dt

                if b.x < 0 or b.x > love.graphics.getWidth() or
                    b.y < 0 or b.y > love.graphics.getHeight() then
                    table.remove(Projectile.list, i)
        end
            end
        end,

        DrawProj = function()
            
            for i, b in ipairs(Projectile.list) do
                Love.graphics.setColor(1, 0, 0)
                Love.graphics.circle("fill", b.x , b.y, 10)
                Love.graphics.setColor(1, 1, 1)
            end
        end

    }
    return Projectile
