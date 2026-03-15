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
   if key == "right" then
        Bullet.NewBullet(player.x, player.y, 1, 0) 
   end
    if key == "left" then
        Bullet.NewBullet(player.x, player.y, -1, 0) 
    end
end