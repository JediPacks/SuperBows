#==================NOTE====================#
# This function was coded by JohnPaulInso  #
# Please don't claim this as your own work #
# Please do credit me this for your videos #
#  Subscribe: www.youtube.com/JohnPaulInso #
#==========================================#
#--------BOWS PLUS BY JohnPaulInso---------#
execute at @a[scores={UseBow=1..},nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{CustomModelData:104,display:{Name:"[{\"text\":\"Ender\",\"color\":\"light_purple\",\"italic\":false},{\"text\":\" Bow\",\"color\":\"green\",\"italic\":false}]"}}}}] run data merge entity @e[type=arrow,limit=1,sort=nearest,distance=..2] {Tags:["enderarrow"]}

execute as @a[scores={UseBow=1..}] at @e[type=arrow,tag=enderarrow,nbt={inGround:1b},limit=1] run tp @p[scores={UseBow=1..}] @e[type=arrow,tag=enderarrow,limit=1,sort=nearest]

execute as @e[type=arrow,tag=enderarrow] at @s run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 1 force

execute at @e[tag=enderarrow,nbt={inGround:1b}] at @a[scores={UseBow=1..}] run particle portal ~ ~ ~ .1 .1 .1 1 100 force

execute at @e[tag=enderarrow,nbt={inGround:1b}] run scoreboard players set @a UseBow 0

kill @e[tag=enderarrow,nbt={inGround:1b}]