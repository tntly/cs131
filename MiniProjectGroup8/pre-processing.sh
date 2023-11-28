#!bin/bash

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; OFS = ","} $11 == "chinese" {print $2, $3, $4, $5, $6, $7, $8, $9, $10}' east_asia_top_tracks.csv | awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} $5 >= 70 {print}' > chinese

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; OFS = ","} $11 == "j-pop" || $11 == "japanese" || $11 == "j-dance" || $11 == "j-idol" {print $2, $3, $4, $5, $6, $7, $8, $9, $10}' east_asia_top_tracks.csv | sort -u | awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} $5 >= 70 {print}' > japanese

awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"; OFS = ","} $11 == "k-pop" || $11 == "korean" {print $2, $3, $4, $5, $6, $7, $8, $9, $10}' east_asia_top_tracks.csv | sort -u | awk 'BEGIN {FPAT = "([^,]*)|(\"([^\"]|\"\")*\")"} $5 >= 70 {print}' > korean
