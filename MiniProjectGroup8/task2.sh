#!bin/bash

# task 2.1: List the top 5 artists with the most songs for each file
awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} {print $4}' chinese | sort | uniq -c | sort -nr | head -n 5 | awk 'BEGIN {print "Top 5 Chinese Artists with the Most Songs:"} {print}' > task2.txt

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} {print $4}' japanese | sort | uniq -c | sort -nr | head -n 5 | awk 'BEGIN {print "Top 5 Japanese Artists with the Most Songs:"} {print}' >> task2.txt

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} {print $4}' korean | sort | uniq -c | sort -nr | head -n 5 | awk 'BEGIN {print "Top 5 Korean Artists with the Most Songs:"} {print}' >> task2.txt

# task 2.2: List the 5 oldest songs in each file