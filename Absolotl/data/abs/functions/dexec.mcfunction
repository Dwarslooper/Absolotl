execute as @e[tag=b.swords] at @s run teleport @s ~ ~ ~ ~-20 ~
execute as @e[tag=b.swords] at @s if entity @e[distance=..1.4,type=!minecraft:axolotl,type=!#minecraft:arrows,type=!minecraft:armor_stand,type=!#minecraft:impact_projectiles,type=!item,type=!drowned,tag=!b.attacker] run playsound minecraft:block.anvil.land master @a[distance=..20] ~ ~ ~ 1 1
execute as @e[tag=b.swords] at @s run effect give @e[tag=!b.nume,distance=..1.6,type=!minecraft:axolotl,type=!#minecraft:arrows,type=!minecraft:armor_stand,type=!#minecraft:impact_projectiles,type=!minecraft:drowned,tag=!b.attacker] minecraft:instant_health 1 0 true
execute as @e[tag=b.swords] at @s run effect give @e[tag=b.nume,distance=..1.6,type=!minecraft:axolotl,type=!#minecraft:arrows,type=!minecraft:armor_stand,type=!#minecraft:impact_projectiles] minecraft:instant_damage 1 0 true
execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s run teleport @e[type=minecraft:armor_stand,tag=b.swords] ^ ^-0.4 ^0.2
execute as @e[type=minecraft:axolotl,tag=b.spawned] at @s run teleport @e[type=minecraft:armor_stand,tag=b.dc] ~ ~ ~