execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Small:1b,ArmorItems:[{},{},{},{id:"netherite_sword",Count:1b}],HandItems:[{},{}],Pose:{Head:[90f,0f,0f]},Tags:["b.swords"],NoGravity:1b}
execute as @e[tag=b.swords] at @s run teleport @s ~ ~ ~ ~30 ~
scoreboard players set attack_cooldown b.data 1