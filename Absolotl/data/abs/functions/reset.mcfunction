scoreboard players reset * b.data
bossbar remove minecraft:b.health
execute as @e[type=minecraft:armor_stand,tag=b.dc] at @s run advancement grant @a[distance=..10] only abs:kill_absolotl
kill @e[tag=b.spawned]
kill @e[tag=b.swords]
tag @e remove b.a4.target
execute as @e[type=minecraft:armor_stand,tag=b.dc] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_sword",Count:1b,tag:{display:{Name:'{"text":"Axolotl Sword","color":"light_purple","italic":false}',Lore:['{"text":"The reward you get","color":"gray","italic":false}','{"text":"for defeating Absolotl","color":"gray","italic":false}']},HideFlags:6,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:16,Operation:0,UUID:[I;-2058641980,940196576,-1829350718,-1147322688],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:0,UUID:[I;-897020467,-352369533,-1960213864,1223664653],Slot:"mainhand"}]}}}
execute as @e[type=minecraft:armor_stand,tag=b.dc] at @s run kill @s
execute as @e[type=husk,tag=b.attacker] at @s run teleport @s ~ -800 ~
kill @e[type=husk,tag=b.attacker]