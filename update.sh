#!/bin/bash
cd ~
git clone https://https://github.com/WickedTree/odle-hangupsbot.git newhb
sudo pkill python
rm -rf hangoutsbot
mv newhb hangoutsbot
python3 hangoutsbot/hangupsbot/hangupsbot.py
