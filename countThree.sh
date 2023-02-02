
if [ "$#" -ne 1 ]; then
	echo "Usage: $0 filename"
	exit 1
fi

filename=$1

# Loop through each line in the file
while read line; do
	# Count the number of occurrences of each word in the line
	for word in $line; do
		count=$(echo "$line" | grep -o $word | wc -l)
		if [ $count -ge 3 ]; then
			echo "$line"
			break
		fi
       	done
done < $filename

