myconvert(){
  sed '
      s/\([0-9][0-9]*\(\.[0-9]\+\)\?\)us/\1*1/g;
      s/\([0-9][0-9]*\(\.[0-9]\+\)\?\)ms/\1*1000/g;
      s/\([0-9][0-9]*\(\.[0-9]\+\)\?\)GB/\1*8000000000/g;
      s/\([0-9][0-9]*\(\.[0-9]\+\)\?\)KB/\1*8000000/g;
  ' </dev/stdin | bc | sed 's/\..*$//' # Final sed to remove decimal point
}


LATENCY1=$(cat out.txt | grep "Latency" | head -1 | awk '{printf "%s\n",$2}' | myconvert)
LATENCY2=$(cat out1.txt | grep "Latency" | head -1 | awk '{printf "%s\n",$2}'| myconvert)

echo "RESULT-LATENCY "$(echo "$LATENCY1 + $LATENCY2 / 2" | bc)
