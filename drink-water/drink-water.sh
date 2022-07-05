#!/bin/bash

quotesFile="$(dirname "$0")/frases.txt"

quoteData=$(cat "$quotesFile" | shuf | head -n 1)
quoteIcon=$(echo "$quoteData" | cut -d '	' -f 1)
quoteText=$(echo "$quoteData" | cut -d '	' -f 2)

notify-send "$quoteText" -t 10000 -a "Hey! I need your attention..." -i "$quoteIcon"

