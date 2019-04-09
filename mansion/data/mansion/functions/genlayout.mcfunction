#GenLayout

#Summon MansionLayoutGen clouds offset from MansionMain cloud, depending on orientation
#LF: -31 to the left, -1 down, -33 forwards
#LM: -31 to the left, -1 down, -65 forwards
#LR: -31 to the left, -1 down, -78 forwards
#RF: +1 to the right, -1 down, -33 forwards
#RM: +1 to the right, -1 down, -65 forwards
#RR: +1 to the right, -1 down, -78 forwards
execute at @s[tag=MansionMain] run summon minecraft:area_effect_cloud ^31 ^-1 ^33 {Duration:600,CustomName:"{\"text\":\"LeftFront\"}",Tags:["MansionLayoutGen", "LeftFront"]}
execute at @s[tag=MansionMain] run summon minecraft:area_effect_cloud ^31 ^-1 ^65 {Duration:600,CustomName:"{\"text\":\"LeftMiddle\"}",Tags:["MansionLayoutGen", "LeftMiddle"]}
execute at @s[tag=MansionMain] run summon minecraft:area_effect_cloud ^31 ^-1 ^78 {Duration:600,CustomName:"{\"text\":\"LeftRear\"}",Tags:["MansionLayoutGen", "LeftRear"]}
execute at @s[tag=MansionMain] run summon minecraft:area_effect_cloud ^-1 ^-1 ^33 {Duration:600,CustomName:"{\"text\":\"RightFront\"}",Tags:["MansionLayoutGen", "RightFront"]}
execute at @s[tag=MansionMain] run summon minecraft:area_effect_cloud ^-1 ^-1 ^65 {Duration:600,CustomName:"{\"text\":\"RightMiddle\"}",Tags:["MansionLayoutGen", "RightMiddle"]}
execute at @s[tag=MansionMain] run summon minecraft:area_effect_cloud ^-1 ^-1 ^78 {Duration:600,CustomName:"{\"text\":\"RightRear\"}",Tags:["MansionLayoutGen", "RightRear"]}

#Execute for MansionLayoutGen clouds to place a structure block with initial rotation
execute at @e[tag=MansionLayoutGen] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace #mansion:redstone_power
execute if entity @s[tag=South] at @e[tag=MansionLayoutGen] run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0}
execute if entity @s[tag=East] at @e[tag=MansionLayoutGen] run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",ignoreEntities:0b,rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:0,posY:0,posZ:0}
execute if entity @s[tag=North] at @e[tag=MansionLayoutGen] run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",ignoreEntities:0b,rotation:"CLOCKWISE_180",mode:"LOAD",posX:0,posY:0,posZ:0}
execute if entity @s[tag=West] at @e[tag=MansionLayoutGen] run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",ignoreEntities:0b,rotation:"CLOCKWISE_90",mode:"LOAD",posX:0,posY:0,posZ:0}

#Prepare porch
execute if entity @s[tag=MansionMain] positioned ~ ~1 ~ run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace #mansion:redstone_power
execute if entity @s[tag=South] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-2,posY:-1,posZ:-2,name:"mansion:layout/porch"}
execute if entity @s[tag=East] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",posX:-2,posY:-1,posZ:2,name:"mansion:layout/porch"}
execute if entity @s[tag=North] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:2,posY:-1,posZ:2,name:"mansion:layout/porch"}
execute if entity @s[tag=West] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",posX:2,posY:-1,posZ:-2,name:"mansion:layout/porch"}

#Pick a random number between 1-5
scoreboard players set Min Randomizer 1
scoreboard players set Max Randomizer 5
function mansion:math/randomizer

#Apply layout names to structure blocks, using random number
#Layout 1
execute if score @s Randomizer matches 1 at @e[tag=MansionLayoutGen,tag=LeftFront] run data merge block ~ ~ ~ {name:"mansion:layout/layout01_lf"}
execute if score @s Randomizer matches 1 at @e[tag=MansionLayoutGen,tag=LeftMiddle] run data merge block ~ ~ ~ {name:"mansion:layout/layout01_lm"}
execute if score @s Randomizer matches 1 at @e[tag=MansionLayoutGen,tag=LeftRear] run data merge block ~ ~ ~ {name:"mansion:layout/layout01_lr"}
execute if score @s Randomizer matches 1 at @e[tag=MansionLayoutGen,tag=RightFront] run data merge block ~ ~ ~ {name:"mansion:layout/layout01_rf"}
execute if score @s Randomizer matches 1 at @e[tag=MansionLayoutGen,tag=RightMiddle] run data merge block ~ ~ ~ {name:"mansion:layout/layout01_rm"}
execute if score @s Randomizer matches 1 at @e[tag=MansionLayoutGen,tag=RightRear] run data merge block ~ ~ ~ {name:"mansion:layout/layout01_rr"}
#Layout 2
execute if score @s Randomizer matches 2 at @e[tag=MansionLayoutGen,tag=LeftFront] run data merge block ~ ~ ~ {name:"mansion:layout/layout02_lf"}
execute if score @s Randomizer matches 2 at @e[tag=MansionLayoutGen,tag=LeftMiddle] run data merge block ~ ~ ~ {name:"mansion:layout/layout02_lm"}
execute if score @s Randomizer matches 2 at @e[tag=MansionLayoutGen,tag=LeftRear] run data merge block ~ ~ ~ {name:"mansion:layout/layout02_lr"}
execute if score @s Randomizer matches 2 at @e[tag=MansionLayoutGen,tag=RightFront] run data merge block ~ ~ ~ {name:"mansion:layout/layout02_rf"}
execute if score @s Randomizer matches 2 at @e[tag=MansionLayoutGen,tag=RightMiddle] run data merge block ~ ~ ~ {name:"mansion:layout/layout02_rm"}
execute if score @s Randomizer matches 2 at @e[tag=MansionLayoutGen,tag=RightRear] run data merge block ~ ~ ~ {name:"mansion:layout/layout02_rr"}
#Layout 3
execute if score @s Randomizer matches 3 at @e[tag=MansionLayoutGen,tag=LeftFront] run data merge block ~ ~ ~ {name:"mansion:layout/layout03_lf"}
execute if score @s Randomizer matches 3 at @e[tag=MansionLayoutGen,tag=LeftMiddle] run data merge block ~ ~ ~ {name:"mansion:layout/layout03_lm"}
execute if score @s Randomizer matches 3 at @e[tag=MansionLayoutGen,tag=LeftRear] run data merge block ~ ~ ~ {name:"mansion:layout/layout03_lr"}
execute if score @s Randomizer matches 3 at @e[tag=MansionLayoutGen,tag=RightFront] run data merge block ~ ~ ~ {name:"mansion:layout/layout03_rf"}
execute if score @s Randomizer matches 3 at @e[tag=MansionLayoutGen,tag=RightMiddle] run data merge block ~ ~ ~ {name:"mansion:layout/layout03_rm"}
execute if score @s Randomizer matches 3 at @e[tag=MansionLayoutGen,tag=RightRear] run data merge block ~ ~ ~ {name:"mansion:layout/layout03_rr"}
#Layout 4
execute if score @s Randomizer matches 4 at @e[tag=MansionLayoutGen,tag=LeftFront] run data merge block ~ ~ ~ {name:"mansion:layout/layout04_lf"}
execute if score @s Randomizer matches 4 at @e[tag=MansionLayoutGen,tag=LeftMiddle] run data merge block ~ ~ ~ {name:"mansion:layout/layout04_lm"}
execute if score @s Randomizer matches 4 at @e[tag=MansionLayoutGen,tag=LeftRear] run data merge block ~ ~ ~ {name:"mansion:layout/layout04_lr"}
execute if score @s Randomizer matches 4 at @e[tag=MansionLayoutGen,tag=RightFront] run data merge block ~ ~ ~ {name:"mansion:layout/layout04_rf"}
execute if score @s Randomizer matches 4 at @e[tag=MansionLayoutGen,tag=RightMiddle] run data merge block ~ ~ ~ {name:"mansion:layout/layout04_rm"}
execute if score @s Randomizer matches 4 at @e[tag=MansionLayoutGen,tag=RightRear] run data merge block ~ ~ ~ {name:"mansion:layout/layout04_rr"}
#Layout 5
execute if score @s Randomizer matches 5 at @e[tag=MansionLayoutGen,tag=LeftFront] run data merge block ~ ~ ~ {name:"mansion:layout/layout05_lf"}
execute if score @s Randomizer matches 5 at @e[tag=MansionLayoutGen,tag=LeftMiddle] run data merge block ~ ~ ~ {name:"mansion:layout/layout05_lm"}
execute if score @s Randomizer matches 5 at @e[tag=MansionLayoutGen,tag=LeftRear] run data merge block ~ ~ ~ {name:"mansion:layout/layout05_lr"}
execute if score @s Randomizer matches 5 at @e[tag=MansionLayoutGen,tag=RightFront] run data merge block ~ ~ ~ {name:"mansion:layout/layout05_rf"}
execute if score @s Randomizer matches 5 at @e[tag=MansionLayoutGen,tag=RightMiddle] run data merge block ~ ~ ~ {name:"mansion:layout/layout05_rm"}
execute if score @s Randomizer matches 5 at @e[tag=MansionLayoutGen,tag=RightRear] run data merge block ~ ~ ~ {name:"mansion:layout/layout05_rr"}

#Ready to generate layout
#	Tag existing items as "ExistingItem"
#	Add grass blocks
#	Activate structure blocks
#	Kill items resulting from room generation (not tagged ExistingItem)
#	Remove MansionLayoutGen clouds
tag @e[type=item] add ExistingItem
execute if entity @s[tag=MansionMain] run fill ^31 ^-2 ^2 ^-29 ^-2 ^78 minecraft:grass_block
execute if entity @s[tag=MansionMain] run setblock ~ ~-1 ~ minecraft:redstone_block
execute at @e[tag=MansionLayoutGen] run setblock ~ ~1 ~ minecraft:redstone_block
kill @e[type=item,tag=!ExistingItem]
kill @e[tag=MansionLayoutGen]
