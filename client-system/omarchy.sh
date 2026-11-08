#!/usr/bin/bash
system=0
1st="$(ls ~/.config)"
if [[ "1st" == *omarchy* ]]; then
  echo "you are omarchy, flag!"
  system=1
else
  echo "wait other"

2st="$(which omarchy-pkg-add)"
if [[ system == 1 ]]; then
  echo "skip"
elif [[ 2st == */bin* ]]; then
  echo "flag!"
  system=1
else
  echo "exit"
  exit(0)

if lscpu | grep -qiE 'Core (5|7) (320|330|350|360)'; then
  echo "you are WL"
  exec pacman -Sy intel-media-driver
