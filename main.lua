love = require("love")
player = require("player")
enemy = require("enemy")
bullet = require("projectile")

function Love.load()
    
end

function Love.update(dt)

    player.UpdatePlayer(dt)
    enemy.UpdateEnemy(dt, player.x)
    bullet.UpdateProj(dt)

end

function Love.draw()
    
    player.DrawPlayer()
    enemy.DrawEnemy()
    bullet.DrawProj()

end

function love.keypressed(key)

    if key == "right" or key == "k" then
        Bullet.NewBullet(player.x, player.y, 1, 0) 
    end
    if key == "left" or key == "h" then
        Bullet.NewBullet(player.x, player.y, -1, 0) 
    end
    if key == "down" or key == "l" then
        Bullet.NewBullet(player.x, player.y, 0, 1)
    end
        if key == "up" or key == "j" then
        Bullet.NewBullet(player.x, player.y, 0, -1)
    end
    
end