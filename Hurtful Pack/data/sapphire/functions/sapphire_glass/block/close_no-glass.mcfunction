setblock ~ ~ ~ minecraft:air destroy
execute if entity @p[scores={sp.sg.place=1..},distance=..8] run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.25d,0.0d],Item:{id:"minecraft:light_blue_stained_glass",Count:1b}}
particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.25 0.25 0.25 2 20
playsound minecraft:ui.toast.in block @a ~ ~ ~ 1 2
