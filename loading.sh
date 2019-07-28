DOT=1
LINES=$(($(tput lines)/2))
NUM_COLS=$(($(tput cols)/2))
TEXT="00% complete. Loading"
NUM_SPACE=$(($NUM_COLS-$((${#TEXT}/2))))
for ((i = 0; i <= 100; i++)); do
  clear
  # Centers the text vertically
  for((row = 0; row < $LINES; row++)); do
    echo
  done
  # Centers the text horizontally
  for((col = 0; col < $NUM_SPACE; col++)); do
    echo -en " "
  done

  # Prints the Percentage Completed
  echo -en "$i% complete. Loading"

  # Prints the number of dots
  for((j = 0; j < $DOT; j++)); do
    echo -en "."
  done
  echo
  # Increase the number of dots
  ((DOT++))
  # Resets the number of dots to 1
  if (($DOT > 5)); then
    DOT=1
  fi
  sleep .20
done
clear
# Centers the text vertically
for((row = 0; row < $LINES; row++)); do
  echo
done
# Centers the text horizontally
for((col = 0; col < $NUM_SPACE; col++)); do
  echo -en " "
done
read -s -r -p "Loading Complete."
clear
