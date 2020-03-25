#!/bin/bash
cd ~
declare -a lines
readarray -t lines ghcredentials.txt
git clone https://${lines[0]}:${lines[1]}@https://github.com/WickedTree/odle-hangupsbot.git newhb
sudo pkill python
rm -rf hangoutsbot
mv newhb hangoutsbot
python3 hangoutsbot/hangupsbot/hangupsbot.py
