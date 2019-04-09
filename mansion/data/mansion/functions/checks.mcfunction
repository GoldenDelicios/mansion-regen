#Checks

#Occupied: Given Orientation, detect players occupying Mansion.
execute if entity @s[tag=South] store result score Occupied MansionData positioned ~-29 ~-1 ~-76 if entity @a[dx=55,dy=31,dz=71]
execute if entity @s[tag=East] store result score Occupied MansionData positioned ~-76 ~-1 ~-27 if entity @a[dx=71,dy=31,dz=55]
execute if entity @s[tag=North] store result score Occupied MansionData positioned ~-27 ~-1 ~4 if entity @a[dx=55,dy=31,dz=71]
execute if entity @s[tag=West] store result score Occupied MansionData positioned ~4 ~-1 ~-29 if entity @a[dx=71,dy=31,dz=55]

#Player: Check for eligible hosts
#	Set everyone to eligible (assume no data, schedule = 1)
#	Remove players with data (schedule = 0)
#	Add back players that satisfy schedule and host limit requirements (already have data, schedule = 2)
scoreboard players set @a[distance=..24] MansionSchedule 1
execute as @e[tag=MansionPlayerData,distance=..5] at @a[distance=..24] if score @s MansionIDs = @p MansionIDs run scoreboard players set @p MansionSchedule 0
execute as @e[tag=MansionPlayerData,distance=..5] at @a[distance=..24] if score @s MansionIDs = @p MansionIDs if score @s MansionSchedule <= HourCount MansionSchedule if score @s MansionData < HostLimit MansionConfig run scoreboard players set @p MansionSchedule 2

#Set 1 second cooldown, run genmansion as nearest eligible host.
summon area_effect_cloud ~ ~ ~ {Duration:20, CustomName:"{\"text\":\"MansionCooldown\"}", Tags:["MansionCooldown"]}
execute if score Occupied MansionData matches 0 as @p[distance=..24,scores={MansionSchedule=1..}] run function mansion:genmansion
scoreboard players reset @a MansionSchedule
