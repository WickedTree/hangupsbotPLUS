#!/bin/bash
cd ~
passwrd="head -2 ghcrededntials.txt| tail -1"
usrnme="head -1 ghcredentials.txt"
git clone https://${usrnme}:${passwrd}@https://github.com/WickedTree/odle-hangupsbot.git newhb
sudo pkill python
rm -rf hangoutsbot
mv newhb hangoutsbot
python3 hangoutsbot/hangupsbot/hangupsbot.py
