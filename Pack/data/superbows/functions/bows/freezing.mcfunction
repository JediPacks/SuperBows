#==================NOTE====================#
# This function was coded by JohnPaulInso  #
# Please don't claim this as your own work #
# Please do credit me this for your videos #
#  Subscribe: www.youtube.com/JohnPaulInso #
#==========================================#
#--------BOWS PLUS BY JohnPaulInso---------#
execute at @a[scores={UseBow=1..},nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{CustomModelData:102,display:{Name:"[{\"text\":\"Freezing\",\"color\":\"aqua\",\"italic\":false},{\"text\":\" Bow\",\"color\":\"green\",\"italic\":false}]"}}}}] run data merge entity @e[type=arrow,limit=1,sort=nearest,distance=..2] {Tags:["freezingarrow"]}

execute as @a[scores={UseBow=1..}] at @e[type=arrow,tag=freezingarrow,nbt={inGround:1b},limit=1] run execute at @e[type=!player,type=!item,type=!item_frame,type=!arrow,distance=..3] as @s run fill ~ ~ ~ ~ ~2 ~ ice

execute at @e[type=arrow,tag=freezingarrow,nbt={inGround:1b},limit=1] run execute at @e[type=arrow,tag=freezingarrow,nbt={inGround:1b},limit=1] run effect give @e[type=!player,distance=..3] minecraft:slowness 15 255 true

execute as @e[type=arrow,tag=freezingarrow] at @s run particle block minecraft:ice ~ ~ ~ .2 .2 .2 0 3 force

execute at @e[tag=freezingarrow,nbt={inGround:1b}] run scoreboard players set @a UseBow 0

kill @e[tag=freezingarrow,nbt={inGround:1b}]