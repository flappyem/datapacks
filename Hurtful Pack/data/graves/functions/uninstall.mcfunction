#init
scoreboard objectives remove g.deaths
scoreboard objectives remove g.usebonemeal
scoreboard objectives remove g.sapling_height
scoreboard objectives remove g.sapling_rng
#feature-compatibility: witchtrading
scoreboard objectives remove wt.shootc
scoreboard objectives remove wt.shinigami
scoreboard objectives remove wt.shinigamipw
#feature compatibility to witchtrading: limit witch again
execute unless score $rngmax$ wt.rng matches 15 run scoreboard players set $rngmax$ wt.rng 15

#tick
kill @e[tag=g.bone]
kill @e[tag=g.dropskull]
kill @e[tag=g.skull_dusty]
kill @e[tag=g.skull]
kill @e[tag=g.flower]
kill @e[tag=g.mushroom]
kill @e[tag=g.sapling_drop]
kill @e[tag=g.notree]
