# This is exercise 5 answers
# Usage: bash Answers5.sh "wages.csv"
 
# This is the first part of the assignment by yours truly, shel
# Returns unique gender and years experience pairs in order and places them in a file
cat "$1" | sed 's/,/ /g' | cut -d ' ' -f 1,2 | grep -v 'gender' | sort -k 1,1 -k 2,2n | uniq > genderyearsexperiences.txt


