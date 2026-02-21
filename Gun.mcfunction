Active, Repeat: execute at @p[scores={gun=1..}] at @p run summon minecraft:armor_stand ^ ^ ^2 {Tags:["gun"],NoGravity:1b,Invisible:1b,Marker:1b,NoAI:1,Small:1b,equipment:{head:{id:"minecraft:stone_button",count:1}}}
Active, Chain, Conditional: execute at @p at @e[tag=gun,limit=1,sort=nearest] run tp @e[tag=gun,limit=1,sort=nearest] ~ ~0.02 ~ facing entity @p\]
Active, Chain, Conditional: execute at @p run playsound minecraft:entity.firework_rocket.large_blast_far master @a ~ ~ ~ 10 1

Active, Repeat: scoreboard players reset @a gun
Active, Repeat: execute at @e[tag=gun] run particle minecraft:firework
Active, Repeat: execute as @p at @p run kill @e[tag=gun,distance=80..]
Active, Repeat: execute at @e[tag=gun] run tp @e[tag=gun,limit=1,sort=nearest] ^ ^ ^-1.5
Active, Repeat: execute at @e[tag=gun] run damage @e[distance=0..2,limit=1] 5 minecraft:thrown
