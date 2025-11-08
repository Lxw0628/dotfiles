#!/bin/bash

cat <<EOF | xmenu
[]=  Tile Layout                    0
[M]  Monocle Layout                 1
TTT  Bstack Layout                  2
===  Bstackhoriz Layout             3
|M|  Centeredmaster Layout          4
>M>  Centeredfloatingmaster Layout  5
|||  Columns Layout                 6
[D]  Deck Layout                    7
[@]  Spiral Layout                  8
[\\] Dwindle Layout                  9
HHH  Grid Layout                    10
---  Horizgrid Layout               11
:::  Gaplessgrid Layout             12
###  Nrowgrid Layout                13
><>  Floating Layout                14
EOF
