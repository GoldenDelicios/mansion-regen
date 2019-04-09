#Add

#Summon NewMansionMain, assign ID
execute align xyz positioned ~0.5 ~ ~0.5 run summon area_effect_cloud ~ ~ ~ {Duration:2147483647, CustomName:"{\"text\":\"MansionMain\"}", Tags:["EternalCloud", "MansionMain", "NewMansionMain"]}
scoreboard players add NewID MansionIDs 1
scoreboard players operation @e[tag=NewMansionMain] MansionIDs = NewID MansionIDs

#Set orientation
execute as @s[y_rotation=-45..45] run tag @e[tag=NewMansionMain] add North
execute as @s[y_rotation=45..135] run tag @e[tag=NewMansionMain] add East
execute as @s[y_rotation=135..-135] run tag @e[tag=NewMansionMain] add South
execute as @s[y_rotation=-135..-45] run tag @e[tag=NewMansionMain] add West
execute as @e[tag=NewMansionMain,tag=North] at @s run tp @s ~ ~ ~ 0 0
execute as @e[tag=NewMansionMain,tag=East] at @s run tp @s ~ ~ ~ 90 0
execute as @e[tag=NewMansionMain,tag=South] at @s run tp @s ~ ~ ~ 180 0
execute as @e[tag=NewMansionMain,tag=West] at @s run tp @s ~ ~ ~ -90 0

#Confirmation
execute at @e[tag=NewMansionMain] run summon area_effect_cloud ~ ~ ~ {Duration:1200, CustomName:"{\"text\":\"MansionCooldown\"}", Tags:["MansionCooldown"]}
tellraw @s {"text":"> Created Mansion","color":"green"}
tellraw @s {"text":"> Started 60 second cooldown","color":"green"}
function mansion:config
execute at @e[tag=NewMansionMain] run function mansion:config/highlight

#Finalize as MansionMain
tag @e[tag=NewMansionMain] remove NewMansionMain
scoreboard players add Total MansionUnique 1
