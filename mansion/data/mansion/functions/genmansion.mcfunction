#GenMansion

tellraw @s {"text":"Generating Mansion..."}

#Generate layout, rooms, and mobs
execute as @e[tag=MansionMain,sort=nearest,limit=1,distance=..100] at @s run function mansion:genlayout
execute as @e[tag=MansionMain,sort=nearest,limit=1,distance=..100] at @s run function mansion:genrooms
execute as @e[tag=MansionMain,sort=nearest,limit=1,distance=..100] at @s run function mansion:genmobs

#If player does not have an ID, assign them one
execute unless entity @s[scores={MansionIDs=1..}] run scoreboard players add NewID MansionIDs 1
execute unless entity @s[scores={MansionIDs=1..}] run scoreboard players operation @s MansionIDs = NewID MansionIDs

#If player does not have data at this mansion, create a MansionPlayerData cloud, add +1 to unique mansions. Run House Hunters if they've visited all mansions
scoreboard players add @s[scores={MansionSchedule=1}] MansionUnique 1
execute if score @s MansionUnique >= Total MansionUnique run advancement grant @s only mansion:house_hunters
execute as @s[scores={MansionSchedule=1}] at @e[tag=MansionMain,sort=nearest,limit=1,distance=..100] run summon area_effect_cloud ~ ~1 ~ {Duration:2147483647, CustomName:"{\"text\":\"MansionPlayerData\"}", Tags:["EternalCloud", "MansionPlayerData", "NewMansionPlayerData"]}
scoreboard players operation @e[tag=NewMansionPlayerData] MansionIDs = @s MansionIDs
tag @e[tag=NewMansionPlayerData] remove NewMansionPlayerData

#Add +1 to number of times hosted
#Extend schedule for next regen (Schedule = PlayerCooldown + HourCount)
#Set 60s cooldown
execute at @s as @e[tag=MansionPlayerData,distance=..30] if score @s MansionIDs = @p MansionIDs run scoreboard players add @s MansionData 1
execute at @s as @e[tag=MansionPlayerData,distance=..30] if score @s MansionIDs = @p MansionIDs run scoreboard players operation @s MansionSchedule = PlayerCooldown MansionConfig
execute at @s as @e[tag=MansionPlayerData,distance=..30] if score @s MansionIDs = @p MansionIDs run scoreboard players operation @s MansionSchedule += HourCount MansionSchedule
execute at @e[tag=MansionMain,sort=nearest,limit=1,distance=..100] run summon area_effect_cloud ~ ~ ~ {Duration:1200, CustomName:"{\"text\":\"MansionCooldown\"}", Tags:["MansionCooldown"]}

tellraw @s {"text":"Generation finished."}
