##by NOPEname

# get current location
execute store result score x nnin_zprivate run data get entity @s Pos[0] 100
execute store result score y nnin_zprivate run data get entity @s Pos[1] 100
execute store result score z nnin_zprivate run data get entity @s Pos[2] 100



# detect movement
scoreboard players operation dx nnin_zprivate = x nnin_zprivate
scoreboard players operation dy nnin_zprivate = y nnin_zprivate
scoreboard players operation dz nnin_zprivate = z nnin_zprivate
scoreboard players operation dx nnin_zprivate -= @s nnin_zpriv_x
scoreboard players operation dy nnin_zprivate -= @s nnin_zpriv_y
scoreboard players operation dz nnin_zprivate -= @s nnin_zpriv_z

tag @s add nnin_is_moving
execute if score dx nnin_zprivate matches 0 if score dy nnin_zprivate matches 0 if score dz nnin_zprivate matches 0 run tag @s remove nnin_is_moving

tag @s remove nnin_moving_north
tag @s remove nnin_moving_south
tag @s remove nnin_moving_east
tag @s remove nnin_moving_west
tag @s remove nnin_moving_up
tag @s remove nnin_moving_down
execute if score dz nnin_zprivate matches ..-1 run tag @s add nnin_moving_north
execute if score dz nnin_zprivate matches 1.. run tag @s add nnin_moving_south
execute if score dx nnin_zprivate matches 1.. run tag @s add nnin_moving_east
execute if score dx nnin_zprivate matches ..-1 run tag @s add nnin_moving_west



# store location data for next tick
scoreboard players operation @s nnin_zpriv_x = x nnin_zprivate
scoreboard players operation @s nnin_zpriv_y = y nnin_zprivate
scoreboard players operation @s nnin_zpriv_z = z nnin_zprivate
