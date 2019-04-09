#Undefine

execute at @e[tag=MansionMain,sort=nearest,limit=1] run kill @e[tag=MansionPlayerData,distance=..5]
execute at @e[tag=MansionMain,sort=nearest,limit=1] run kill @e[tag=MansionCooldown,distance=..5]
kill @e[tag=MansionMain,sort=nearest,limit=1]
scoreboard players remove Total MansionUnique 1

#Success
tellraw @s {"text":"> Deleted Mansion","color":"green"}
function mansion:config
