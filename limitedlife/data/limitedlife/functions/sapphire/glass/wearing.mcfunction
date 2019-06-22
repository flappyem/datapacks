#replace helmet-slot with sapphire_glass
execute as @s[nbt=!{Inventory:[{Slot:103b,id:"minecraft:light_blue_stained_glass",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] run function limitedlife:sapphire/glass/helmet
#remove sp.sapphireglass if died
replaceitem entity @s[scores={sp.sincedeath=..50}] armor.head minecraft:air 1
tag @s[scores={sp.sincedeath=..50}] remove sp.sapphireglass
#particle
execute if score _global_ sp.glass_placed = 1 sp.glass_placed run scoreboard players add $global_slow$ sp.glass_placed 1
execute if score $global_slow$ sp.glass_placed = 10 sp.glass_placed run particle minecraft:dust 0.25 0.1 1 1.25 ~ ~1.5 ~ 0.125 0.125 0.125 1 1
execute if score $global_slow$ sp.glass_placed = 10 sp.glass_placed run scoreboard players set $global_slow$ sp.glass_placed 0