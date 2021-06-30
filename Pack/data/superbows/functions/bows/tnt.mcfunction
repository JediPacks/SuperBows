execute at @a[scores={UseBow=1..},nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{CustomModelData:101,display:{Name:"[{\"text\":\"TNT\",\"color\":\"red\",\"italic\":false},{\"text\":\" Bow\",\"color\":\"green\",\"italic\":false}]"}}}}] run data merge entity @e[type=arrow,limit=1,sort=nearest,distance=..2] {Tags:["tntarrow"]}

execute as @a[scores={UseBow=1..}] at @e[type=arrow,tag=tntarrow,nbt={inGround:1b},limit=1] run summon tnt ~ ~ ~ {Fuse:0,ExplosionRadius:1,ignited:1}

execute as @e[type=arrow,tag=tntarrow] at @s run particle minecraft:lava ~ ~ ~ 0 0 0 0 2 force

execute at @e[tag=tntarrow,nbt={inGround:1b}] run scoreboard players set @a UseBow 0

kill @e[tag=tntarrow,nbt={inGround:1b}]
