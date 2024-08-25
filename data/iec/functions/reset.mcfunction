#> iec:reset
#
#   # データ削除
#
# @user

# シュルカーの中身を空に
    data remove block 2949 -64 2949 Items
# エンダーチェストに反映
    function iec:click/data/modify
# storage削除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page
# スコアリセット
    scoreboard players reset @s iec