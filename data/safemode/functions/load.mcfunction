gamerule keepInventory true
gamerule doDaylightCycle false
gamerule randomTickSpeed 9
time set noon

scoreboard objectives add Constant dummy
scoreboard players set Const2 Constant 2

scoreboard objectives add safemodeFood food
scoreboard objectives add safemodeHealth health

scoreboard objectives add smHelp trigger

scoreboard objectives add smFood trigger
scoreboard objectives add smHealth trigger
scoreboard objectives add smSlowFall trigger
scoreboard objectives add smInvisibility trigger
scoreboard objectives add smWaterBreathing trigger

scoreboard players set @a smHelp 0

#initialize for existing players
execute as @a[tag=!safemode] run function safemode:initialize

scoreboard players enable @a smHelp
scoreboard players enable @a smFood
scoreboard players enable @a smHealth
scoreboard players enable @a smSlowFall
scoreboard players enable @a smInvisibility
scoreboard players enable @a smWaterBreathing
