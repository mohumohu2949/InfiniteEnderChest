#> iec:click/page/
#
#   # 何もないよ
#
# @within function iec:click/

# シュルカーリセット
    data remove block 2949 -64 2949 Items
# もしアイテムを持ったままボタンを押してしまっていたら
# インベントリが埋まっていたらその場にスポーン
    execute if data entity @s EnderItems[{Slot:17b}] run item replace block 2949 -64 2949 container.0 from entity @s enderchest.17
    execute if data entity @s EnderItems[{Slot:17b}] unless data entity @s Inventory[35] run loot give @s mine 2949 -64 2949 debug_stick
    execute if data entity @s EnderItems[{Slot:17b}] if data entity @s Inventory[35] run loot spawn ~ ~ ~ mine 2949 -64 2949 debug_stick
    
# score-reset
    scoreboard players reset *page iec.click
    scoreboard players reset @s iec.click

# エンダーチェストにページ切り替えボタン配置
    loot replace entity @s enderchest.8 loot iec:next
    item replace entity @s enderchest.17 with pink_stained_glass_pane{iec:page}
    loot replace entity @s enderchest.26 loot iec:back
# ページ名記載
    item modify entity @s enderchest.17 iec:page