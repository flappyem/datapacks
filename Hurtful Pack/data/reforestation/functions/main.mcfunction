#schedule
execute if score $reforestation$ hp.storeboard matches 1.. run schedule function reforestation:main 10s
#setblock all saplings
execute as @e[type=minecraft:item] at @s run function reforestation:plant
