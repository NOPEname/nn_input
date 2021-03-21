##by NOPEname

tag @a remove nnin_facing_north
tag @a remove nnin_facing_south
tag @a remove nnin_facing_west
tag @a remove nnin_facing_east

tag @a[y_rotation=135..225] add nnin_facing_north
tag @a[y_rotation=-135..-46] add nnin_facing_east
tag @a[y_rotation=-45..45] add nnin_facing_south
tag @a[y_rotation=45..135] add nnin_facing_west
