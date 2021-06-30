execute at @a[scores={UseBow=1..},nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{CustomModelData:103,display:{Name:"[{\"text\":\"Lightning\",\"color\":\"yellow\",\"italic\":false},{\"text\":\" Bow\",\"color\":\"green\",\"italic\":false}]"}}}}] run data merge entity @e[type=arrow,limit=1,sort=nearest,distance=..2] {Tags:["lightningarrow"]}

execute as @a[scores={UseBow=1..}] at @e[type=arrow,tag=lightningarrow,nbt={inGround:1b},limit=1] run summon minecraft:lightning_bolt

execute as @e[type=arrow,tag=lightningarrow] at @s run particle cloud ~ ~ ~ 0 0 0 0 2 force

kill @e[tag=lightningarrow,nbt={inGround:1b}]
