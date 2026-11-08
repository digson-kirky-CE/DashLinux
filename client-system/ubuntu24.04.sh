#!/usr/bin/bash
system=0
1st="$(cat /etc/os-release)"
if [[ 1st == *24.04* ]]; then
  echo "you are 24.04, flag!"
  system=1
else
  echo "ok"
  exit(0)
fi

2rd="$(lspci -nn | grep -i network)"
if [[ 2rd == *AX211*]]; then
  if [[ system == 1 ]]; then
    exit(1)
fi
