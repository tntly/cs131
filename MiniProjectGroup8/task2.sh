#!bin/bash

echo 'Task 2.1' > task2.txt
# task 2.1: list the top 5 artists with the most songs for each file
awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} {print $4}' chinese | sort | uniq -c | sort -nr | head -n 5 | awk 'BEGIN {print "Top 5 Chinese Artists with the Most Songs:"} {print} END {printf "\n"}' >> task2.txt

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} {print $4}' japanese | sort | uniq -c | sort -nr | head -n 5 | awk 'BEGIN {print "Top 5 Japanese Artists with the Most Songs:"} {print} END {printf "\n"}' >> task2.txt

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} {print $4}' korean | sort | uniq -c | sort -nr | head -n 5 | awk 'BEGIN {print "Top 5 Korean Artists with the Most Songs:"} {print} END {printf "\n"}' >> task2.txt

echo 'Task 2.2' >> task2.txt
# task 2.2: list the top 5 oldest songs in each file
awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; OFS = ","} {print $6, $5, $2, $1}' chinese | sort -t, -k1,1 | head -n 5 | awk -F, 'BEGIN {OFS = ","; print "Top 5 Oldest Chinese Songs:"} {print} END {printf "\n"}' >> task2.txt

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; OFS = ","} {print $6, $5, $2, $1}' japanese | sort -t, -k1,1 | head -n 5 | awk -F, 'BEGIN {OFS = ","; print "Top 5 Oldest Japanese Songs:"} {print} END {printf "\n"}' >> task2.txt

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; OFS = ","} {print $6, $5, $2, $1}' korean | sort -t, -k1,1 | head -n 5 | awk -F, 'BEGIN {OFS = ","; print "Top 5 Oldest Korean Songs:"} {print}' >> task2.txt
