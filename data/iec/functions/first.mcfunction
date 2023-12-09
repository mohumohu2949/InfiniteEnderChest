#> iec:first
#
#   # 最初の処理
#
# @within function iec:core/tick

# oh_my_dat
    function oh_my_dat:please
# score-set
    scoreboard players set @s iec 1

## 以下dataが存在すれば実行
# 右列にアイテムがあればstorageに移動
    execute if data entity @s EnderItems[{Slot:8b}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.2.EnderItems append from entity @s EnderItems[{Slot:8b}]
    execute if data entity @s EnderItems[{Slot:17b}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.2.EnderItems append from entity @s EnderItems[{Slot:17b}]
    execute if data entity @s EnderItems[{Slot:26b}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.2.EnderItems append from entity @s EnderItems[{Slot:26b}]
# シュルカーリセット
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.2.EnderItems run data remove block 2949 -64 2949 Items
# dataが存在したらシュルカーに移す
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.2.EnderItems run data modify block 2949 -64 2949 Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.2.EnderItems
# Slotを移動
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.2.EnderItems[{Slot:8b}] run item replace block 2949 -64 2949 container.0 from block 2949 -64 2949 container.8
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.2.EnderItems[{Slot:17b}] run item replace block 2949 -64 2949 container.1 from block 2949 -64 2949 container.17
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.2.EnderItems[{Slot:26b}] run item replace block 2949 -64 2949 container.2 from block 2949 -64 2949 container.26
# storageを一旦削除
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.2.EnderItems run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.2.EnderItems
# storageに適応
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.2.EnderItems append from block 2949 -64 2949 Items[{Slot:0b}]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.2.EnderItems append from block 2949 -64 2949 Items[{Slot:1b}]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.2.EnderItems append from block 2949 -64 2949 Items[{Slot:2b}]

# エンダーチェストにページ切り替えボタン配置
    loot replace entity @s enderchest.8 loot iec:next
    item replace entity @s enderchest.17 with pink_stained_glass_pane{iec:page}
    loot replace entity @s enderchest.26 loot iec:back
# ページ名記載
    item modify entity @s enderchest.17 iec:page