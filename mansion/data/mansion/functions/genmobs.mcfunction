#SpawnMobs

#Remove all hostile mobs within the mansion before respawning mobs
tp @e[type=evoker,distance=..100] ~ -500 ~
tp @e[type=vindicator,distance=..100] ~ -500 ~
tp @e[type=vex,distance=..100] ~ -500 ~
tp @e[type=creeper,distance=..100] ~ -500 ~
tp @e[type=skeleton,distance=..100] ~ -500 ~
tp @e[type=skeleton_horse,distance=..100] ~ -500 ~
tp @e[type=zombie,distance=..100] ~ -500 ~
tp @e[type=zombie_villager,distance=..100] ~ -500 ~
tp @e[type=witch,distance=..100] ~ -500 ~
tp @e[type=spider,distance=..100] ~ -500 ~
tp @e[type=enderman,distance=..100] ~ -500 ~
tp @e[type=silverfish,distance=..100] ~ -500 ~
tp @e[type=phantom,distance=..100] ~ -500 ~

#Summon illagers
execute at @e[tag=SpawnWarrior] run summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b}
execute at @e[tag=SpawnMage] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b}
kill @e[tag=MansionMobSpawn]
