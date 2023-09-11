#!/usr/bin/env bash

cat AdGuard_games_list.txt | awk '!/\// && match($0, /[a-zA-Z0-9\.\-]+/, g) { if (g[0]) { print "0.0.0.0 "g[0] } }' > PiHole_games_list.txt
