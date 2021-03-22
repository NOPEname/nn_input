##by NOPEname

tag @s remove nnin_on_ground
tag @s[nbt={OnGround:1b}] add nnin_on_ground

tag @s remove nnin_on_fire
tag @s[nbt=!{Fire:-20s}] add nnin_on_fire

function nninput:zz_private/movement
