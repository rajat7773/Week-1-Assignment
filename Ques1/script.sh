word='" 200 '
file=web-server.log

count=$(grep -i "$word" "$file" | wc -l)

echo "The number of HTTP 200 errors in the log file are $count"


word1='HTTP/1.1" [0-9]* '
word2=' [0-9]* '

echo "The list of HTTP Response codes and their count -"

#grep -o "$word1" "$file"| grep -o "$word2" | sort | uniq -c 

#grep -o "$word1" "$file"| sort | uniq -c

grep -o "$word1" "$file" | (awk '{print $2}' | sort | uniq -c)
