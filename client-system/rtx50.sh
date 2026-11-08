gpu=0
1st="$(lspci | grep -i nvidia)"
if [[ 1st == *GB* ]]; then
  echo "you are rtx, flag!"
  gpu=1
else
  echo "ok"
fi

2rd="$(lspci -k | grep -A 3 -i "vga\|display")"
if [[ 2rd == *i915* ]]; then
  if [[ gpu == 1 ]]; then
    echo "exit"
    exit(1)
else
  echo("contiue")
  exit(0)
fi
