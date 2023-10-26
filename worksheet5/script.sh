IFS=$'\n'
for line in $(cat 'Global YouTube Statistics.csv'); do
	IFS=','
	echo $line | read -a cols
	if [[ "${cols[4]}" == "Music" && "${cols[7]}" == "United States" ]]; then
		echo $line >> Music.txt
		echo "Hi"
	fi
	IFS=$'\n'
	# echo $line
done
