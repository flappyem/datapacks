#ll.deaths
execute as @a[limit=1,sort=random] unless score @s ll.deaths >= 0 ll.deaths run scoreboard players add @s ll.deaths 1
scoreboard players remove @a[scores={ll.deaths=11..}] ll.deaths 1



#tp to The Void
execute as @a[scores={ll.deaths=10}] positioned 0 1 -30 unless entity @s[dx=5,dy=5,dz=-5] run tp @s 3.0 3 -32.0
execute as @a[scores={ll.deaths=10}] positioned 0 1 -30 if entity @s[dx=5,dy=5,dz=-5] run effect give @s[nbt=!{ActiveEffects:[{Id:10b}]}] minecraft:regeneration 10 255 true
execute as @a[scores={ll.deaths=10}] positioned 0 1 -30 if entity @s[dx=5,dy=5,dz=-5] run effect give @s[nbt=!{ActiveEffects:[{Id:20b}]}] minecraft:wither 10 0 true
title @a[scores={ll.deaths=10}] actionbar ["",{"text":"Th","bold":true,"color":"dark_blue"},{"text":"e","bold":true,"obfuscated":true,"color":"dark_blue"},{"text":" V","bold":true,"color":"dark_blue"},{"text":"o","bold":true,"obfuscated":true,"color":"dark_blue"},{"text":"id","bold":true,"color":"dark_blue"}]

#feature-compatibility to graves
function graves:limitedlife

#calling functions

#helmet
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:glass",Count:1b,tag:{display:{Name:"{\"text\":\"Life Support Helmet\",\"color\":\"aqua\",\"italic\":false}"}}}]}] run function limitedlife:helmet/helmet
execute as @a[tag=ll.cured] run function limitedlife:helmet/helmet
#players need to be damaged to update to their real health value
effect give @a[scores={ll.deaths=1..,ll.health=20,ll.sincedeath=..100}] minecraft:wither 1 1 true
#Compatibility for keepInventory=true
tag @a[scores={ll.deaths=1..,ll.health=20,ll.sincedeath=..100}] add ll.cured

#calling curing
execute as @e[type=minecraft:item,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:bat_spawn_egg",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CanPlaceOn:["minecraft:void_air"]}}}] at @s if block ~ ~ ~ minecraft:cauldron[level=3] positioned ~ ~1 ~ if entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..1,tag=!ll.tired] run tag @s add ll.heal
execute as @e[tag=ll.healingredient] at @s positioned ~ ~1 ~ run function limitedlife:curing/curing
#call unmetconditions
execute as @e[type=minecraft:item,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:bat_spawn_egg",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CanPlaceOn:["minecraft:void_air"]}}}] at @s unless block ~ ~ ~ minecraft:cauldron[level=3] run function limitedlife:curing/unmetconditions
execute as @e[type=minecraft:item,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:bat_spawn_egg",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CanPlaceOn:["minecraft:void_air"]}}}] at @s positioned ~ ~1 ~ unless entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..1,tag=!ll.tired] run function limitedlife:curing/unmetconditions
#remove ll.bat if canceled
execute as @a[tag=ll.bat] at @s at @e[type=minecraft:item,tag=ll.healingredient,sort=nearest,limit=1] positioned ~ ~1 ~ unless entity @e[type=minecraft:end_crystal,sort=nearest,limit=1,distance=..1] run tag @s remove ll.bat
#ll.blocked should be pickupable
data merge entity @e[tag=ll.blocked,tag=!ll.blockeddone,limit=1,sort=random] {PickupDelay:20,Tags:["ll.blocked","ll.blockeddone"]}
#make sure ll.beam entities die
execute as @e[type=minecraft:armor_stand,tag=ll.beam] at @s unless entity @e[tag=ll.bat,limit=1,sort=nearest,distance=..64] run kill @s
#tired effect
execute at @e[tag=ll.tired] run particle minecraft:dripping_water ~ ~1 ~ 0.3 0.3 0.3 1 1 normal
scoreboard players add @e[tag=ll.tired] ll.cooking 1
execute at @e[tag=ll.tired,scores={ll.cooking=9999}] run playsound minecraft:ambient.underwater.exit ambient @a[distance=..32] ~ ~ ~ 0.1 0.5
tag @e[tag=ll.tired,scores={ll.cooking=10000..}] remove ll.tired
scoreboard players reset @e[tag=!ll.tired,type=minecraft:end_crystal,scores={ll.cooking=1..}] ll.cooking

#Bat Wings: loottable for all bats
data merge entity @e[type=minecraft:bat,nbt=!{DeathLootTable:"limitedlife:entities/bat"},limit=1,sort=random,tag=!ll.bat,tag=!ll.spawnbat] {DeathLootTable:"limitedlife:entities/bat"}

#call (BatWing) Ventilator
execute as @e[type=armor_stand,tag=ll.fan] at @s run function limitedlife:ventilators/ventilator
#calls ventilator_placement
execute as @e[type=minecraft:bat,tag=ll.spawnbat,tag=ll.valid] at @s run function limitedlife:ventilators/ventilator_placement
execute as @e[type=minecraft:bat,tag=ll.spawnbat] run tp 0 -200 0
execute as @e[type=minecraft:bat,tag=ll.spawnbat] run kill @s

#calling beam
execute as @e[type=minecraft:armor_stand,tag=ll.beam] at @s run function limitedlife:curing/beam

#calling batwingsuit
execute as @a[nbt={Inventory:[{id:"minecraft:elytra",Count:1b,tag:{HideFlags:16,CanPlaceOn:["minecraft:void_air"]}}]}] at @s in overworld unless block ~ ~ ~ minecraft:cave_air run function limitedlife:items/batwingsuit
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:elytra",Count:1b,tag:{HideFlags:16,CanPlaceOn:["minecraft:void_air"]}}}] at @s in overworld unless block ~ ~ ~ minecraft:cave_air run function limitedlife:items/batwingsuit
#crafting batwingsuit (Inventory)
execute as @a[scores={ll.craftbatwing=1..}] run give @s minecraft:elytra{Damage:232s,Unbreakable:1b,HideFlags:16,CanPlaceOn:["minecraft:void_air"],display:{Name:"{\"text\":\"Bat Wingsuit\",\"color\":\"yellow\",\"italic\":false}"}} 1
execute as @a[scores={ll.craftbatwing=1..}] run scoreboard players remove @s ll.craftbatwing 1
#wearing Bat Wingsuit
execute as @a[nbt={FallFlying:1b,Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{HideFlags:16,CanPlaceOn:["minecraft:void_air"]}}]}] run effect give @s[nbt=!{ActiveEffects:[{Id:28b}]}] minecraft:slow_falling 1 0 true
execute as @a[nbt={FallFlying:1b,Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{HideFlags:16,CanPlaceOn:["minecraft:void_air"]}}]}] at @s positioned ^ ^ ^-1 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 force

#enchanting and coloring is not really possible without /modifyitem since you can't change the nbt that easily. Will add it later if I won't forget it
#function limitedlife:helmet/enchanting
#function limitedlife:helmet/coloring
