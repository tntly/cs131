#!bin/bash
# Since there are 7 genres and some of them are related to the others, let's group Japanese, J-pop, J-idol, and J-dance together as well as Korean and K-pop to create 3 smaller datasets (Chinese, Japanese, and Korean
# We now have 3 different files, one for each dataset
# Next, we must delete the index and query_genre columns as well as get rid of the duplicates
# The final step is to filter the songs to get the popular songs or those with a popularity metric between 70 and 100
# We can now use these 3 files for the next 2 tasks

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; OFS = ","} $11 == "chinese" {print $2, $3, $4, $5, $6, $7, $8, $9, $10}' east_asia_top_tracks.csv | awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} $5 >= 70 {print}' > chinese

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; OFS = ","} $11 == "j-pop" || $11 == "japanese" || $11 == "j-dance" || $11 == "j-idol" {print $2, $3, $4, $5, $6, $7, $8, $9, $10}' east_asia_top_tracks.csv | sort -u | awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} $5 >= 70 {print}' > japanese

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; OFS = ","} $11 == "k-pop" || $11 == "korean" {print $2, $3, $4, $5, $6, $7, $8, $9, $10}' east_asia_top_tracks.csv | sort -u | awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} $5 >= 70 {print}' > korean
