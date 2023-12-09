#> iec:core/tick
#
#   # メインで処理する場所
#
# @within tag/function minecraft:tick

# 最初の処理
    execute as @a unless score @s iec matches -2949.. run function iec:first

# クリック判定
    execute as @a at @s run function iec:click/