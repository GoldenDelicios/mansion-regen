#Load
scoreboard objectives add MansionIDs dummy
scoreboard objectives add MansionData dummy
scoreboard objectives add MansionSchedule dummy
scoreboard objectives add MansionUnique dummy
scoreboard objectives add MansionConfig dummy
execute unless score HostLimit MansionConfig matches 0.. run scoreboard players set HostLimit MansionConfig 2
execute unless score PlayerCooldown MansionConfig matches 0.. run scoreboard players set PlayerCooldown MansionConfig 720

scoreboard players reset * Randomizer
scoreboard objectives add Randomizer dummy
