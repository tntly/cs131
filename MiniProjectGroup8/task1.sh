#!bin/bash

echo 'Task 1.1' > task1.txt
# task 1.1: determine the average duration then convert it to minutes
awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; sum = 0; print "Average Duration of Chinese Popular Songs:"} {sum += $8} END {print sum / NR / 60000 " minutes"; printf "\n"}' chinese >> task1.txt

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; sum = 0; print "Average Duration of Japanese Popular Songs:"} {sum += $8} END {print sum / NR / 60000 " minutes"; printf "\n"}' japanese >> task1.txt

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; sum = 0; print "Average Duration of Korean Popular Songs:"} {sum += $8} END {print sum / NR / 60000 " minutes"; printf "\n"}' korean >> task1.txt

echo 'Task 1.2' >> task1.txt
# task 1.2: determine the proportion of explicit to non-explicit songs
awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; explicit_count = 0} {if ($9 == "True") explicit_count++} END {print "Number of Explicit Songs (Chinese): " explicit_count; print "Total Number of Songs: " NR; print "Proportion: " explicit_count / NR; printf "\n"}' chinese >> task1.txt

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; explicit_count = 0} {if ($9 == "True") explicit_count++} END {print "Number of Explicit Songs (Japanese): " explicit_count; print "Total Number of Songs: " NR; print "Proportion: " explicit_count / NR; printf "\n"}' japanese >> task1.txt

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; explicit_count = 0} {if ($9 == "True") explicit_count++} END {print "Number of Explicit Songs (Korean): " explicit_count; print "Total Number of Songs: " NR; print "Proportion: " explicit_count / NR}' korean >> task1.txt