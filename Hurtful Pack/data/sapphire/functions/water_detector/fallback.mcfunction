execute store success score _fallback_ sp.wd.pa.fail run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:observer",tag:{}}},nbt={Item:{id:"minecraft:observer",Count:1b}},distance=..2] {Item:{id:"minecraft:observer",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Water Detector\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute if score _fallback_ sp.wd.pa.fail > 0 sp.wd.pa.fail run scoreboard players remove @s sp.wd.pa.fail 1
scoreboard players set _fallback_ sp.wd.pa.fail 0