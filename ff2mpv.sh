#!/bin/bash
# json parsing is for schmucks

while read -rN 1 C && [ "$C" != "}" ]; do D="$D$C"; done
mpv --no-terminal --force-window $(echo $D | sed 's/.*:"//;s/"//')
