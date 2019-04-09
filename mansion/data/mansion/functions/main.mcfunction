#Main
execute as @e[tag=MansionMain] at @s if entity @a[distance=..24] unless entity @e[tag=MansionCooldown,distance=..1] run function mansion:checks
data merge entity @e[tag=EternalCloud,sort=random,limit=1] {Age:0}

#HourCount
execute unless score Ticks MansionSchedule matches 1.. run scoreboard players add HourCount MansionSchedule 1
execute unless score Ticks MansionSchedule matches 1.. run scoreboard players set Ticks MansionSchedule 72000
scoreboard players remove Ticks MansionSchedule 1
