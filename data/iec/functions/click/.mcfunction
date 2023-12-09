#> iec:click/
#
#   # クリックした時の処理
#
# @within function iec:core/tick

## 次のページ
    # item検知-next
        execute store result score *next iec.click run clear @s player_head{iec:next} 0
        execute store result score @s iec.click run clear @s player_head{iec:next} 1
    # ボタンが押されたとき
        execute if score *next iec.click matches 1.. if score @s iec.click matches 1.. run function iec:click/next/

## 前のページ
    # item検知-back
        execute store result score *back iec.click run clear @s player_head{iec:back} 0
        execute store result score @s iec.click run clear @s player_head{iec:back} 1
    # ボタンが押されたとき
        execute if score *back iec.click matches 1.. if score @s iec.click matches 1.. run function iec:click/back/

## ページ数
    # item検知-page
        execute store result score *page iec.click run clear @s pink_stained_glass_pane{iec:page} 0
        execute store result score @s iec.click run clear @s pink_stained_glass_pane{iec:page} 1
    # ボタンが押されたとき
        execute if score *page iec.click matches 1.. if score @s iec.click matches 1.. run function iec:click/page/