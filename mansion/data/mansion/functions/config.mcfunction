#Begin

#Print first message
kill @e[tag=BlockHologram]
tellraw @s [{"text":"Mansion Configuration","color":"aqua","italic":true}]
tellraw @s [{"text":"[Add] ","color":"gold","clickEvent":{"action":"run_command","value":"/function mansion:config/define"}},{"text":"[Remove] ","color":"gold","clickEvent":{"action":"run_command","value":"/function mansion:config/delete"}},{"text":"[Generate as Host] ","color":"gold","clickEvent":{"action":"run_command","value":"/function mansion:genmansion"}},{"text":"[Generate as Guest] \n","color":"gold","clickEvent":{"action":"run_command","value":"/execute as @e[tag=MansionMain,sort=nearest,limit=1] at @s run function mansion:genmansion"}}]
