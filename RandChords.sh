#!/bin/bash

chordList=("Do" "Re" "Mi" "Fa" "Sol" "La" "Si" "Do#" "Re#" "Fa#" "Sol#" "La#")
random_number=$((RANDOM % 12 + 1))
echo "Tonalité: ${chordList[random_number]}" > randomSong.txt

degresList=("I" "ii" "iii" "IV" "V" "vi" "vii°")
shuffled_degresList=($(shuf -e "${degresList[@]}"))
echo "Degrès: ${shuffled_degresList[0]}, ${shuffled_degresList[1]}, ${shuffled_degresList[2]}" >> randomSong.txt

tempoList=("60" "70" "80" "90" "100" "110" "120" "130" "140")
random_number=$((RANDOM % 9 + 1))
echo "Tempo: ${tempoList[random_number]}" >> randomSong.txt