execute unless entity @s[nbt={Inventory:[{tag:{wopdiamond:1b}}]}] run replaceitem entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{}]}}},nbt={SelectedItem:{id:"minecraft:diamond_sword"},Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] weapon.offhand minecraft:carrot_on_a_stick{wopblocking:1b,wopcarrot:1b,wopdiamond:1b,CustomModelData:6828,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Amount:-0.7,Operation:1,UUIDMost:81202,UUIDLeast:187255,Slot:"offhand"},{AttributeName:"generic.armor",Amount:15,Operation:0,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackDamage",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackSpeed",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255}]}
execute unless entity @s[nbt={Inventory:[{tag:{wopiron:1b}}]}] run replaceitem entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{}]}}},nbt={SelectedItem:{id:"minecraft:iron_sword"},Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] weapon.offhand minecraft:carrot_on_a_stick{wopblocking:1b,wopcarrot:1b,wopiron:1b,CustomModelData:6829,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Amount:-0.7,Operation:1,UUIDMost:81202,UUIDLeast:187255,Slot:"offhand"},{AttributeName:"generic.armor",Amount:14,Operation:0,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackDamage",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackSpeed",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255}]}
execute unless entity @s[nbt={Inventory:[{tag:{wopgolden:1b}}]}] run replaceitem entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{}]}}},nbt={SelectedItem:{id:"minecraft:golden_sword"},Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] weapon.offhand minecraft:carrot_on_a_stick{wopblocking:1b,wopcarrot:1b,wopgolden:1b,CustomModelData:6830,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Amount:-0.7,Operation:1,UUIDMost:81202,UUIDLeast:187255,Slot:"offhand"},{AttributeName:"generic.armor",Amount:30,Operation:0,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackDamage",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackSpeed",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255}]}
execute unless entity @s[nbt={Inventory:[{tag:{wopwooden:1b}}]}] run replaceitem entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{}]}}},nbt={SelectedItem:{id:"minecraft:wooden_sword"},Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] weapon.offhand minecraft:carrot_on_a_stick{wopblocking:1b,wopcarrot:1b,wopwooden:1b,CustomModelData:6831,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Amount:-0.7,Operation:1,UUIDMost:81202,UUIDLeast:187255,Slot:"offhand"},{AttributeName:"generic.armor",Amount:12,Operation:0,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackDamage",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackSpeed",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255}]}
execute unless entity @s[nbt={Inventory:[{tag:{wopstone:1b}}]}] run replaceitem entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{}]}}},nbt={SelectedItem:{id:"minecraft:stone_sword"},Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] weapon.offhand minecraft:carrot_on_a_stick{wopblocking:1b,wopcarrot:1b,wopstone:1b,CustomModelData:6832,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Amount:-0.7,Operation:1,UUIDMost:81202,UUIDLeast:187255,Slot:"offhand"},{AttributeName:"generic.armor",Amount:13,Operation:0,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackDamage",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackSpeed",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255}]}

#if enchanted
execute unless entity @s[nbt={Inventory:[{tag:{wopdiamondench:1b}}]}] run replaceitem entity @s[nbt={SelectedItem:{tag:{Enchantments:[{}]}}},nbt={SelectedItem:{id:"minecraft:diamond_sword"},Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] weapon.offhand minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],wopcarrot:1b,wopblocking:1b,wopdiamondench:1b,CustomModelData:6828,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Amount:-0.7,Operation:1,UUIDMost:81202,UUIDLeast:187255,Slot:"offhand"},{AttributeName:"generic.armor",Amount:15,Operation:0,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackDamage",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackSpeed",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255}]}
execute unless entity @s[nbt={Inventory:[{tag:{wopironench:1b}}]}] run replaceitem entity @s[nbt={SelectedItem:{tag:{Enchantments:[{}]}}},nbt={SelectedItem:{id:"minecraft:iron_sword"},Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] weapon.offhand minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],wopcarrot:1b,wopblocking:1b,wopironench:1b,CustomModelData:6829,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Amount:-0.7,Operation:1,UUIDMost:81202,UUIDLeast:187255,Slot:"offhand"},{AttributeName:"generic.armor",Amount:14,Operation:0,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackDamage",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackSpeed",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255}]}
execute unless entity @s[nbt={Inventory:[{tag:{wopgoldenench:1b}}]}] run replaceitem entity @s[nbt={SelectedItem:{tag:{Enchantments:[{}]}}},nbt={SelectedItem:{id:"minecraft:golden_sword"},Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] weapon.offhand minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],wopcarrot:1b,wopblocking:1b,wopgoldenench:1b,CustomModelData:6830,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Amount:-0.7,Operation:1,UUIDMost:81202,UUIDLeast:187255,Slot:"offhand"},{AttributeName:"generic.armor",Amount:30,Operation:0,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackDamage",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackSpeed",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255}]}
execute unless entity @s[nbt={Inventory:[{tag:{wopwoodenench:1b}}]}] run replaceitem entity @s[nbt={SelectedItem:{tag:{Enchantments:[{}]}}},nbt={SelectedItem:{id:"minecraft:wooden_sword"},Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] weapon.offhand minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],wopcarrot:1b,wopblocking:1b,wopwoodenench:1b,CustomModelData:6831,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Amount:-0.7,Operation:1,UUIDMost:81202,UUIDLeast:187255,Slot:"offhand"},{AttributeName:"generic.armor",Amount:12,Operation:0,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackDamage",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackSpeed",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255}]}
execute unless entity @s[nbt={Inventory:[{tag:{wopstoneench:1b}}]}] run replaceitem entity @s[nbt={SelectedItem:{tag:{Enchantments:[{}]}}},nbt={SelectedItem:{id:"minecraft:stone_sword"},Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] weapon.offhand minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],wopcarrot:1b,wopblocking:1b,wopstoneench:1b,CustomModelData:6832,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Amount:-0.7,Operation:1,UUIDMost:81202,UUIDLeast:187255,Slot:"offhand"},{AttributeName:"generic.armor",Amount:13,Operation:0,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackDamage",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255},{AttributeName:"generic.attackSpeed",Amount:-1,Operation:1,UUIDMost:81202,UUIDLeast:187255}]}

#playsound if hurt while blocking, also calculation of Damage value for the durability of the sword
execute if entity @s[nbt={HurtTime:9s}] run function worseoldpvp:sword-block/damage/calc
