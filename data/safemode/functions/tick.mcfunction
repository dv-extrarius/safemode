#Help
execute as @a if score @s smHelp matches 1.. run tellraw @s ["",{"text":"Safe Mode:","bold":true,"underlined":true},{"text":"\nRefill Food: ","clickEvent":{"action":"run_command","value":"/trigger smFood"},"bold":false,"underlined":false},{"score":{"name":"@s","objective":"smFood"},"clickEvent":{"action":"run_command","value":"/trigger smFood"}},{"text":"\nRefill Health: ","clickEvent":{"action":"run_command","value":"/trigger smHealth"}},{"score":{"name":"@s","objective":"smHealth"},"clickEvent":{"action":"run_command","value":"/trigger smHealth"}},{"text":"\nSlow Fall: ","clickEvent":{"action":"run_command","value":"/trigger smSlowFall"}},{"score":{"name":"@s","objective":"smInvisibility"},"clickEvent":{"action":"run_command","value":"/trigger smInvisibility"}},{"text":"\nRemain Invisible: ","clickEvent":{"action":"run_command","value":"/trigger smInvisibility"}},{"score":{"name":"@s","objective":"smInvisibility"},"clickEvent":{"action":"run_command","value":"/trigger smInvisibility"}},{"text":"\nWater Breathing: ","clickEvent":{"action":"run_command","value":"/trigger smWaterBreathing"}},{"score":{"name":"@s","objective":"smWaterBreathing"},"clickEvent":{"action":"run_command","value":"/trigger smWaterBreathing"}}]
execute as @a if score @s smHelp matches 1.. run scoreboard players set @s smHelp 0

#Food
execute as @a unless score @s smFood matches 0..1 run scoreboard players operation @s smFood %= Const2 Constant
execute as @a if score @s smFood matches 1 unless score @s safemodeFood matches 20.. run effect give @s minecraft:saturation 1 100 true

#Health
execute as @a unless score @s smHealth matches 0..1 run scoreboard players operation @s smHealth %= Const2 Constant
execute as @a if score @s smHealth matches 1 unless score @s safemodeHealth matches 20.. run effect give @s minecraft:instant_health 1 100 true
execute as @a if score @s smHealth matches 1 run effect give @a minecraft:resistance 1 10 true
execute as @a if score @s smHealth matches 1 run effect give @a minecraft:fire_resistance 1 10 true

#Slow Fall
execute as @a unless score @s smSlowFall matches 0..1 run scoreboard players operation @s smSlowFall %= Const2 Constant
execute as @a if score @s smSlowFall matches 1 run effect give @p minecraft:slow_falling 1 0 true

#Invisibility
execute as @a unless score @s smInvisibility matches 0..1 run scoreboard players operation @s smInvisibility %= Const2 Constant
execute as @a if score @s smInvisibility matches 1 run effect give @a minecraft:invisibility 1 10 true

#Water Breathing
execute as @a unless score @s smWaterBreathing matches 0..1 run scoreboard players operation @s smWaterBreathing %= Const2 Constant
execute as @a if score @s smWaterBreathing matches 1 run effect give @a minecraft:water_breathing 1 10 true

#Ensure all triggers are enabled
scoreboard players enable @a smHelp
scoreboard players enable @a smFood
scoreboard players enable @a smHealth
scoreboard players enable @a smSlowFall
scoreboard players enable @a smInvisibility
scoreboard players enable @a smWaterBreathing