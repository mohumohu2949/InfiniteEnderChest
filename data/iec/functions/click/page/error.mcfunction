#> iec:click/page/error
#
#   # アイテムを持ったままボタンを押してしまった時の処理
#
# @within function iec:click/page/

#> tag
# @private
    #declare tag iec.Summon

# スロット位置の変更
    item replace block 2949 -64 2949 container.0 from entity @s enderchest.17

## インベントリがいっぱいでなければgive
    execute unless data entity @s Inventory[35] run loot give @s mine 2949 -64 2949 debug_stick

## インベントリが埋まっていたらその場にSummon
    # ItemDataをstorageに移動
        execute if data entity @s Inventory[35] run data modify storage iec: Summon.Item set from block 2949 -64 2949 Items[0]
    # Slotを削除
        data remove storage iec: Summon.Item.Slot
    # 適当なアイテムをsummon
        execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["iec.Summon"]}
    # storageのdataをmodify
        data modify entity @e[limit=1,tag=iec.Summon] Item set from storage iec: Summon.Item

# 事後処理
    tag @e remove iec.Summon
    data remove storage iec: Summon.Item
