execute store success score _fallback_ wt.so.pa.fail positioned ~ ~1.5 ~ run data merge entity @e[type=minecraft:item,distance=0.5..3,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:blue_orchid",tag:{}}},nbt={Item:{id:"minecraft:blue_orchid",Count:1b}}] {Item:{id:"minecraft:blue_orchid",Count:1b,tag:{display:{Name:"{\"text\":\"Sad Orchid\",\"color\":\"dark_aqua\",\"italic\":\"false\"}",Lore:["{\"text\":\"...it fills you with determination\"}"]},HideFlags:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{Slot:"offhand",AttributeName:"generic.luck",Name:"generic.luck",Amount:1,Operation:0,UUIDLeast:848934,UUIDMost:433777},{Slot:"mainhand",AttributeName:"generic.luck",Name:"generic.luck",Amount:2,Operation:0,UUIDLeast:848934,UUIDMost:433777}]}}}
execute if score _fallback_ wt.so.pa.fail matches 1.. run scoreboard players remove @s wt.so.pa.fail 1
scoreboard players set _fallback_ wt.so.pa.fail 0
