#!/bin/bash
if test -f "United States/Music.txt"; then
	> "United States/Music.txt"
fi
if test -f "United States/Entertainment.txt"; then
	> "United States/Entertainment.txt"
fi
if test -f "United States/Gaming.txt"; then
	> "United States/Gaming.txt"
fi
if test -f "United States/Comedy.txt"; then
	> "United States/Comedy.txt"
fi

IFS=$'\n'
for line in $(cat 'Global YouTube Statistics.csv'); do
	IFS=','
	read -a cols <<< "$line"
	if [[ "${cols[4]}" == "Music" && "${cols[7]}" == "United States" ]]; then
		echo "$line" >> "United States/Music.txt"
	elif [[ "${cols[4]}" == "Entertainment" && "${cols[7]}" == "United States" ]]; then
		echo "$line" >> "United States/Entertainment.txt"
	elif [[ "${cols[4]}" == "Gaming" && "${cols[7]}" == "United States" ]]; then
		echo "$line" >> "United States/Gaming.txt"
	elif [[ "${cols[4]}" == "Comedy" && "${cols[7]}" == "United States" ]]; then
		echo "$line" >> "United States/Comedy.txt"
	fi
done

wc -l "United States/Music.txt" > ws5.txt

wc -l "United States/Entertainment.txt" >> ws5.txt

wc -l "United States/Gaming.txt" >> ws5.txt

wc -l "United States/Comedy.txt" >> ws5.txt