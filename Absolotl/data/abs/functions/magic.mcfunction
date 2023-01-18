execute as @e[type=minecraft:armor_stand,tag=b.a2.spawner] at @s unless score magic b.data matches 120.. run scoreboard players add magic b.data 1

execute if score magic b.data matches 1 run playsound minecraft:entity.evoker.prepare_attack master @a[distance=..8]
execute if score magic b.data matches 1..80 run effect give @e[type=axolotl,tag=b.spawned] levitation 1 0 true
execute if score magic b.data matches 100..140 run execute positioned ~ ~-2 ~ as @a[distance=..8] at @s run summon evoker_fangs ~ ~ ~
execute if score magic b.data matches 104 run execute as @e[type=axolotl,tag=b.spawned] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.4 100
execute if score magic b.data matches 120 run execute as @e[type=minecraft:armor_stand,tag=b.a2.spawner] at @s run kill @s
execute if score magic b.data matches 120 run scoreboard players reset magic b.data