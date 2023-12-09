#> iec:click/back/
#
#   # 前のページ
#
# @within function iec:click/

# playsound
    playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

# シュルカーリセット
    data remove block 2949 -64 2949 Items
# もしアイテムを持ったままボタンを押してしまっていたら
# インベントリが埋まっていたらその場にスポーン
    execute if data entity @s EnderItems[{Slot:26b}] run item replace block 2949 -64 2949 container.0 from entity @s enderchest.26
    execute if data entity @s EnderItems[{Slot:26b}] unless data entity @s Inventory[35] run loot give @s mine 2949 -64 2949 debug_stick
    execute if data entity @s EnderItems[{Slot:26b}] if data entity @s Inventory[35] run loot spawn ~ ~ ~ mine 2949 -64 2949 debug_stick

# マクロ用にscoreをstorageに移動
    execute store result storage iec: page.num int 1 run scoreboard players get @s iec
# 現在ページの保存
    function iec:click/data/save with storage iec: page

# 警告
    execute if score @s iec matches 1 run tellraw @s [{"text": "これ以上戻せないよ～","color": "light_purple"}]
# score-countdown
    execute if score @s iec matches 2.. run scoreboard players remove @s iec 1
# マクロ用にscoreをstorageに移動
    execute store result storage iec: page.num int 1 run scoreboard players get @s iec
# 次ページのの読み込み
    function iec:click/data/load with storage iec: page

# storage-reset
    data remove storage iec: page.num
# score-reset
    scoreboard players reset *back iec.click
    scoreboard players reset @s iec.click

# エンダーチェストにページ切り替えボタン配置
    loot replace entity @s enderchest.8 loot iec:next
    item replace entity @s enderchest.17 with pink_stained_glass_pane{iec:page}
    loot replace entity @s enderchest.26 loot iec:back
# ページ名記載
    item modify entity @s enderchest.17 iec:page