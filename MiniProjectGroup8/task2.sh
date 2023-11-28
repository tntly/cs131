#!bin/bash

echo 'task 2.1' > task2.txt
# task 2.1: list the top 5 artists with the most songs for each file
awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} {print $4}' chinese | sort | uniq -c | sort -nr | head -n 5 | awk 'BEGIN {print "Top 5 Chinese Artists with the Most Songs:"} {print} END {printf "\n"}' >> task2.txt

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} {print $4}' japanese | sort | uniq -c | sort -nr | head -n 5 | awk 'BEGIN {print "Top 5 Japanese Artists with the Most Songs:"} {print} END {printf "\n"}' >> task2.txt

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} {print $4}' korean | sort | uniq -c | sort -nr | head -n 5 | awk 'BEGIN {print "Top 5 Korean Artists with the Most Songs:"} {print} END {printf "\n"}' >> task2.txt

echo 'task 2.2' >> task2.txt
# task 2.2: list the top 5 oldest songs in each file
sort -t, -k6,6 chinese | head -n 5 | awk -F, 'BEGIN {OFS = ","; print "Top 5 Oldest Chinese Songs:"} {print $1, $2, $5, $6} END {printf "\n"}' >> task2.txt

sort -t, -k6,6 japanese | head -n 5 | awk -F, 'BEGIN {OFS = ","; print "Top 5 Oldest Japanese Songs:"} {print $1, $2, $5, $6} END {printf "\n"}' >> task2.txt

sort -t, -k6,6 japanese | head -n 5 | awk -F, 'BEGIN {OFS = ","; print "Top 5 Oldest Japanese Songs:"} {print $1, $2, $5, $6}' >> task2.txt