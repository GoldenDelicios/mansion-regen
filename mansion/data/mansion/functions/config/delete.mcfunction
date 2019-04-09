#Delete

#Confirmation
execute unless entity @e[tag=MansionMain] run tellraw @s {"text":"No mansion could be found","color":"red"}
execute unless entity @e[tag=MansionMain] run function mansion:config
execute at @e[tag=MansionMain,sort=nearest,limit=1] run function mansion:config/highlight
execute if entity @e[tag=MansionMain] run tellraw @s [{"text":"[Confirm deletion] ","color":"gold","clickEvent":{"action":"run_command","value":"/function mansion:config/undefine"}},{"text":"[Cancel]","color":"red","clickEvent":{"action":"run_command","value":"/function mansion:config"}}]
