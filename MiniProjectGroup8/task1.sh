#!bin/bash

echo 'Task 1.1' > task1.txt
# task 1.1: determine the average duration then convert it to minutes
awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; print "Average Duration of Chinese Popular Songs:"} {sum += $8} END {print sum / NR / 60000 " minutes"; printf "\n"}' chinese

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; print "Average Duration of Japanese Popular Songs:"} {sum += $8} END {print sum / NR / 60000 " minutes"; printf "\n"}' japanese

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; print "Average Duration of Korean Popular Songs:"} {sum += $8} END {print sum / NR / 60000 " minutes"; printf "\n"}' korean

# task 1.2: determine the proportion of explicit to non-explicit songs
