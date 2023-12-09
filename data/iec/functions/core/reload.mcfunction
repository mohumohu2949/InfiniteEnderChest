#> iec:core/reload
#
#   # リロードした時に処理する場所
#
# @within tag/function minecraft:load

#> シュルカー読み込み
    execute in overworld run forceload add 2949 2949
#> シュルカー設置
    execute in overworld unless block 2949 -64 2949 minecraft:white_shulker_box run setblock 2949 -64 2949 white_shulker_box

## Scoreboard
#> @within function iec:**
    scoreboard objectives add iec dummy
    scoreboard objectives add iec.click dummy