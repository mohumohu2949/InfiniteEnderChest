#> iec:reset
#
#   # データ削除
#
# @user

# シュルカーの中身を空に
    data remove block 2949 -64 2949 Items
# エンダーチェストに反映
    function iec:click/data/modify
    item replace entity @s enderchest.8 from block 2949 -64 2949 container.8
    item replace entity @s enderchest.17 from block 2949 -64 2949 container.17
    item replace entity @s enderchest.26 from block 2949 -64 2949 container.26
# storage削除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page
# スコアリセット
    scoreboard players reset @s iec