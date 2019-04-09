#GenRooms

#Place a structure block
execute at @e[tag=MansionRoomGen] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace #mansion:redstone_power
execute at @e[tag=MansionRoomGen] run setblock ~ ~ ~ minecraft:structure_block{mirror:"NONE",ignoreEntities:0b,rotation:"NONE",mode:"LOAD",posX:0,posY:0,posZ:0}

#Determine room type and randomly select room name of that room type.
#	Set Min = 0
#	Set Max value based on RoomType.
#	Generate random number
scoreboard players set Min Randomizer 0
scoreboard players set Max Randomizer 4
execute as @e[tag=MansionRoomGen] unless entity @s[tag=!Type1x1a,tag=!Type1x1b,tag=!Type1x2b,tag=!Type1x2d,tag=!Type2x2b] run function mansion:math/randomizer
scoreboard players set Max Randomizer 3
execute as @e[tag=MansionRoomGen] unless entity @s[tag=!Type1x1as,tag=!Type1x2c,tag=!Type2x2a] run function mansion:math/randomizer
scoreboard players set Max Randomizer 8
execute as @e[tag=Type1x2a] run function mansion:math/randomizer
scoreboard players set Max Randomizer 1
execute as @e[tag=Type1x2s] run function mansion:math/randomizer

#Modify structure block to write room name
execute at @e[tag=Type1x1a,scores={Randomizer=0}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x1_a1"}
execute at @e[tag=Type1x1a,scores={Randomizer=1}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x1_a2"}
execute at @e[tag=Type1x1a,scores={Randomizer=2}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x1_a3"}
execute at @e[tag=Type1x1a,scores={Randomizer=3}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x1_a4"}
execute at @e[tag=Type1x1a,scores={Randomizer=4}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x1_a5"}
execute at @e[tag=Type1x1as,scores={Randomizer=0}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x1_as1"}
execute at @e[tag=Type1x1as,scores={Randomizer=1}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x1_as2"}
execute at @e[tag=Type1x1as,scores={Randomizer=2}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x1_as3"}
execute at @e[tag=Type1x1as,scores={Randomizer=3}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x1_as4"}
execute at @e[tag=Type1x1b,scores={Randomizer=0}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x1_b1"}
execute at @e[tag=Type1x1b,scores={Randomizer=1}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x1_b2"}
execute at @e[tag=Type1x1b,scores={Randomizer=2}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x1_b3"}
execute at @e[tag=Type1x1b,scores={Randomizer=3}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x1_b4"}
execute at @e[tag=Type1x1b,scores={Randomizer=4}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x1_b5"}
execute at @e[tag=Type1x2a,scores={Randomizer=0}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_a1"}
execute at @e[tag=Type1x2a,scores={Randomizer=1}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_a2"}
execute at @e[tag=Type1x2a,scores={Randomizer=2}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_a3"}
execute at @e[tag=Type1x2a,scores={Randomizer=3}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_a4"}
execute at @e[tag=Type1x2a,scores={Randomizer=4}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_a5"}
execute at @e[tag=Type1x2a,scores={Randomizer=5}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_a6"}
execute at @e[tag=Type1x2a,scores={Randomizer=6}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_a7"}
execute at @e[tag=Type1x2a,scores={Randomizer=7}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_a8"}
execute at @e[tag=Type1x2a,scores={Randomizer=8}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_a9"}
execute at @e[tag=Type1x2b,scores={Randomizer=0}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_b1"}
execute at @e[tag=Type1x2b,scores={Randomizer=1}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_b2"}
execute at @e[tag=Type1x2b,scores={Randomizer=2}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_b3"}
execute at @e[tag=Type1x2b,scores={Randomizer=3}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_b4"}
execute at @e[tag=Type1x2b,scores={Randomizer=4}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_b5"}
execute at @e[tag=Type1x2c,scores={Randomizer=0}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_c1"}
execute at @e[tag=Type1x2c,scores={Randomizer=1}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_c2"}
execute at @e[tag=Type1x2c,scores={Randomizer=2}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_c3"}
execute at @e[tag=Type1x2c,scores={Randomizer=3}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_c4"}
execute at @e[tag=Type1x2d,scores={Randomizer=0}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_d1"}
execute at @e[tag=Type1x2d,scores={Randomizer=1}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_d2"}
execute at @e[tag=Type1x2d,scores={Randomizer=2}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_d3"}
execute at @e[tag=Type1x2d,scores={Randomizer=3}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_d4"}
execute at @e[tag=Type1x2d,scores={Randomizer=4}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_d5"}
execute at @e[tag=Type1x2s,scores={Randomizer=0}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_s1"}
execute at @e[tag=Type1x2s,scores={Randomizer=1}] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_s2"}
execute at @e[tag=Type1x2se] run data merge block ~ ~ ~ {name:"mansion:rooms/1x2_se1"}
execute at @e[tag=Type2x2a,scores={Randomizer=0}] run data merge block ~ ~ ~ {name:"mansion:rooms/2x2_a1"}
execute at @e[tag=Type2x2a,scores={Randomizer=1}] run data merge block ~ ~ ~ {name:"mansion:rooms/2x2_a2"}
execute at @e[tag=Type2x2a,scores={Randomizer=2}] run data merge block ~ ~ ~ {name:"mansion:rooms/2x2_a3"}
execute at @e[tag=Type2x2a,scores={Randomizer=3}] run data merge block ~ ~ ~ {name:"mansion:rooms/2x2_a4"}
execute at @e[tag=Type2x2b,scores={Randomizer=0}] run data merge block ~ ~ ~ {name:"mansion:rooms/2x2_b1"}
execute at @e[tag=Type2x2b,scores={Randomizer=1}] run data merge block ~ ~ ~ {name:"mansion:rooms/2x2_b2"}
execute at @e[tag=Type2x2b,scores={Randomizer=2}] run data merge block ~ ~ ~ {name:"mansion:rooms/2x2_b3"}
execute at @e[tag=Type2x2b,scores={Randomizer=3}] run data merge block ~ ~ ~ {name:"mansion:rooms/2x2_b4"}
execute at @e[tag=Type2x2b,scores={Randomizer=4}] run data merge block ~ ~ ~ {name:"mansion:rooms/2x2_b5"}
execute at @e[tag=Type2x2s] run data merge block ~ ~ ~ {name:"mansion:rooms/2x2_s1"}

#Calculate RoomRotation within the layout, based on Orientation score and Rotated tag
#RoomRotation = Rotated + Orientation % 4
scoreboard players set @e[tag=RotatedSouth] MansionData 1
scoreboard players set @e[tag=RotatedEast] MansionData 0
scoreboard players set @e[tag=RotatedNorth] MansionData 3
scoreboard players set @e[tag=RotatedWest] MansionData 2
execute as @s[tag=East] run scoreboard players add @e[tag=MansionRoomGen] MansionData 3
execute as @s[tag=North] run scoreboard players add @e[tag=MansionRoomGen] MansionData 2
execute as @s[tag=West] run scoreboard players add @e[tag=MansionRoomGen] MansionData 1
scoreboard players remove @e[tag=MansionRoomGen,scores={MansionData=4..}] MansionData 4

#Apply rotation and flip properties to structure block
#If rotation==0 or flipped==0, no change needed
execute at @e[tag=MansionRoomGen,scores={MansionData=1}] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90"}
execute at @e[tag=MansionRoomGen,scores={MansionData=2}] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180"}
execute at @e[tag=MansionRoomGen,scores={MansionData=3}] run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90"}
execute at @e[tag=FlippedLR] run data merge block ~ ~ ~ {mirror:"LEFT_RIGHT"}

#Ready to generate room: Room name, rotation, and flip should be defined
#	Tag existing items as "ExistingItem"
#	Activate structure block
#	Kill items resulting from room generation (not tagged ExistingItem)
#	Remove cloud (self), as it is no longer needed.
tag @e[type=item] add ExistingItem
execute at @e[tag=MansionRoomGen] run setblock ~ ~1 ~ redstone_block
kill @e[type=item,tag=!ExistingItem]
kill @e[tag=MansionRoomGen]
