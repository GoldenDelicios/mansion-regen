#Randomizer
#Random number generator for use in other functions

#How to use in other functions:
#Set "Min" and "Max" to the desired values
#Run this function.
#Use the output of "FinalValue" or score of executor in calling function.

#Calculate RawOutput
execute unless entity @e[tag=Randomizer0] run summon minecraft:area_effect_cloud ~ -2 ~ {Duration:20,CustomName: "{\"text\":\"Randomizer0\"}", Tags: ["Randomizer", "Randomizer0"]}
execute unless entity @e[tag=Randomizer1] run summon minecraft:area_effect_cloud ~ -2 ~ {Duration:20,CustomName: "{\"text\":\"Randomizer1\"}", Tags: ["Randomizer", "Randomizer1"]}

scoreboard players set RawOutput Randomizer 0
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 1
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 2
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 4
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 8
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 16
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 32
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 64
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 128
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 256
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 512
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 1024
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 2048
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 4096
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 8192
execute as @e[tag=Randomizer,limit=1,sort=random] if entity @s[tag=Randomizer1] run scoreboard players add RawOutput Randomizer 16384

#Calculate FinalValue
#	Range = 1 + Max - Min
#	FinalValue = RawOutput % Range + Min
scoreboard players set Range Randomizer 1
scoreboard players operation Range Randomizer += Max Randomizer
scoreboard players operation Range Randomizer -= Min Randomizer
scoreboard players operation FinalValue Randomizer = RawOutput Randomizer
scoreboard players operation FinalValue Randomizer %= Range Randomizer
scoreboard players operation FinalValue Randomizer += Min Randomizer
scoreboard players operation @s Randomizer = FinalValue Randomizer

#Print result, if run by player
tellraw @s [{"text":"Your random number is "},{"score":{"name":"FinalValue","objective":"Randomizer"},"color":"green"},{"text":", range: ["},{"score":{"name":"Min","objective":"Randomizer"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set Min Randomizer "},"hoverEvent":{"action":"show_text","value":"Change min value"}},{"text":", "},{"score":{"name":"Max","objective":"Randomizer"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set Max Randomizer "},"hoverEvent":{"action":"show_text","value":"Change max value"}},{"text":"]"}]
