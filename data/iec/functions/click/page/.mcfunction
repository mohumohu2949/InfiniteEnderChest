#> iec:click/page/
#
#   # 何もないよ
#
# @within function iec:click/

# シュルカーリセット
    data remove block 2949 -64 2949 Items
# アイテムを持ったままボタンを押してしまった時の処理
    execute if data entity @s EnderItems[{Slot:17b}] run function iec:click/page/error
    
# score-reset
    scoreboard players reset *page iec.click
    scoreboard players reset @s iec.click

# エンダーチェストにページ切り替えボタン配置
    loot replace entity @s enderchest.8 loot iec:next
    item replace entity @s enderchest.17 with pink_stained_glass_pane{iec:page}
    loot replace entity @s enderchest.26 loot iec:back
# ページ名記載
    item modify entity @s enderchest.17 iec:page