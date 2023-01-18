execute unless score sstime b.data matches 13 run scoreboard players add sstime b.data 1
execute if score sstime b.data matches 1..12 run function abs:ss
execute if score sstime b.data matches 13 run function abs:dexec
tag @e[type=!minecraft:zombie,type=!stray,type=!#minecraft:skeletons,type=!husk,type=!minecraft:drowned,type=!minecraft:phantom,type=!minecraft:wither_skeleton,type=!wither,type=!minecraft:skeleton_horse,type=!minecraft:zombie_villager,type=!minecraft:zombified_piglin,type=!minecraft:zombie_horse,type=!minecraft:zoglin] add b.nume
execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s store result bossbar b.health value run data get entity @s Health
execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s run data merge entity @s {Air:6000}
execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s unless entity @e[tag=b.dc,distance=..200] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Small:1b,NoBasePlate:1b,NoGravity:1b,Silent:1b,Tags:["b.dc"]}
execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace water
execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s if score attack_cooldown b.data matches 1.. run scoreboard players add attack_cooldown b.data 1
execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s if score attack_cooldown b.data matches 400.. run scoreboard players set exec_attack b.data 1
execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s if score attack_cooldown b.data matches 400.. run scoreboard players set attack_cooldown b.data 1
scoreboard players set trapped b.data 0
execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s unless block ~ ~ ~-1 air unless block ~ ~ ~1 air unless block ~1 ~ ~ air unless block ~-1 ~ ~ air run scoreboard players set trapped b.data 1
execute if score trapped b.data matches 1 run scoreboard players add trfree b.data 1
execute unless score trapped b.data matches 1 unless score trfree b.data matches ..0 run scoreboard players remove trfree b.data 1
execute if score trfree b.data matches 200 run execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 air destroy
execute if score trfree b.data matches 200 run execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s run playsound minecraft:entity.wither.break_block master @a[distance=..20] ~ ~ ~ 1 0
execute if score trfree b.data matches 200 run scoreboard players reset trfree b.data
execute if score exec_attack b.data matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["b.attack_selector","b.attack_1"],Duration:20}
execute if score exec_attack b.data matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["b.attack_selector","b.attack_2"],Duration:20}
execute if score exec_attack b.data matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["b.attack_selector","b.attack_3"],Duration:20}
execute if score exec_attack b.data matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["b.attack_selector","b.attack_4"],Duration:20}
execute if score exec_attack b.data matches 1 run execute as @e[type=minecraft:area_effect_cloud,tag=b.attack_selector,limit=1,sort=random] at @s run tag @s add b.as
execute if score exec_attack b.data matches 1 run execute as @e[type=minecraft:area_effect_cloud,tag=b.as] at @s[tag=b.attack_1] run execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s run execute as @a[distance=..8] at @s run summon minecraft:fireball ~ ~-1 ~ {power:[0.0,-1.0,0.0],ExplosionPower:4}
execute if score exec_attack b.data matches 1 run execute as @e[type=minecraft:area_effect_cloud,tag=b.as] at @s[tag=b.attack_2] run execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Silent:1b,Tags:["b.a2.spawner"]}
execute if score exec_attack b.data matches 1 run execute as @e[type=minecraft:area_effect_cloud,tag=b.as] at @s[tag=b.attack_3] run execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Silent:1b,Tags:["b.a3.spawner"]}
execute if score exec_attack b.data matches 1 run tag @e remove b.a4.target
execute if score exec_attack b.data matches 1 run execute as @e[type=minecraft:area_effect_cloud,tag=b.as] at @s[tag=b.attack_4] run execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s unless entity @a[tag=b.a4.target] run tag @r[distance=..10,gamemode=!spectator,gamemode=!creative] add b.a4.target
execute if score exec_attack b.data matches 1 run scoreboard players reset exec_attack b.data

execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s unless block ~ ~-0.2 ~ air facing entity @e[tag=b.a4.target] feet run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s unless block ~ ~-0.2 ~ air run teleport @s ~ ~ ~ facing entity @e[tag=b.a4.target,limit=1,sort=nearest]
execute as @e[type=minecraft:armor_stand,tag=b.a3.spawner] at @s run summon drowned ~ ~ ~1 {HandItems:[{id:"minecraft:trident",Count:1b},{id:"minecraft:trident",Count:1b}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:diamond_helmet",Count:1b}],Tags:["b.rf.particle"],Silent:1b}
execute as @e[type=minecraft:armor_stand,tag=b.a3.spawner] at @s run summon drowned ~ ~ ~-1 {HandItems:[{id:"minecraft:trident",Count:1b},{id:"minecraft:trident",Count:1b}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:diamond_helmet",Count:1b}],Tags:["b.rf.particle"],Silent:1b}
execute as @e[type=minecraft:armor_stand,tag=b.a3.spawner] at @s run summon drowned ~-1 ~ ~ {HandItems:[{id:"minecraft:trident",Count:1b},{id:"minecraft:trident",Count:1b}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:diamond_helmet",Count:1b}],Tags:["b.rf.particle"],Silent:1b}
execute as @e[type=minecraft:armor_stand,tag=b.a3.spawner] at @s run summon drowned ~1 ~ ~ {HandItems:[{id:"minecraft:trident",Count:1b},{id:"minecraft:trident",Count:1b}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:diamond_helmet",Count:1b}],Tags:["b.rf.particle"],Silent:1b}
execute as @e[type=minecraft:armor_stand,tag=b.a3.spawner] at @s run effect give @a[distance=..10] blindness 20 0 true
execute as @e[type=minecraft:armor_stand,tag=b.a3.spawner] at @s run kill @s
execute as @e[tag=b.rf.particle] at @s run particle minecraft:smoke ~ ~1 ~ 0.4 1 0.4 0.01 400 normal
execute as @e[type=minecraft:armor_stand,tag=b.a2.spawner] at @s run function abs:magic
execute as @e[type=minecraft:armor_stand,tag=b.a1.spawner] at @s run execute as @a[distance=..8] at @s run summon minecraft:fireball ~ ~-1 ~ {power:[0.0,-1.0,0.0],ExplosionPower:2}