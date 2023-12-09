#> iec:click/data/load
#
#   # ページの更新
#
# @within function  iec:click/next/
#                   iec:click/back/

# oh_my_dat
    function oh_my_dat:please
## data-load
$data modify block 2949 -64 2949 Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].page.$(num).EnderItems

# data適応
    function iec:click/data/modify
# シュルカーリセット
    data remove block 2949 -64 2949 Items