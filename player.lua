Love = require("love")
Bullet = require("projectile")

Gravity = 1200
GroundPos = 500

    player = {

        x = 200,
        y = GroundPos,
        yVelo = 0,
        jumpVelo = -700,
        pSpeed = 4,
        canJump = false,
        bulletSpeed = 300,

        UpdatePlayer = function(dt)

            player.yVelo = player.yVelo + Gravity*dt
            player.y = player.y + player.yVelo * dt

            --walking
            if love.keyboard.isDown("d") then
                player.x = player.x + player.pSpeed
            end
    
            if love.keyboard.isDown("a")  then
                player.x = player.x - player.pSpeed
            end

            --jump
             if player.y >= GroundPos then

                player.y = GroundPos
                player.yVelo = 0
                player.canJump = true

            end

            if Love.keyboard.isDown("space") and player.canJump then
                
                player.yVelo = player.jumpVelo
                player.canJump = false

            end

        end,

        DrawPlayer = function ()

            Love.graphics.rectangle("fill", player.x, player.y, 50, 60)
            
        end,

    }
    return player
