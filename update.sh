#!/bin/bash
cd ~
declare -a lines
readarray -t lines ghcredentials.txt
git clone https://github.com/WickedTree/odle-hangupsbot.git newhb https://${lines[0]}:${lines[1]}@github.com
sudo pkill python
rm -rf hangoutsbot
mv newhb hangoutsbot
python3 hangoutsbot/hangupsbot/hangupsbot.py
