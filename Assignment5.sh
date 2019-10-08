# This is the Exercise 5 answers.
# Usage: bash Assignment5.sh "wages.csv"


# This is the second part of the assignment
# Returns the gender, yearsExperience, and wage for highest earner
echo "HIGHEST WAGE EARNER:"
cat "$1" | sort -t ',' -k 4 -n -r | head -n 1 | cut -d , -f 1,2,4

# Returns the gender, yearsExperience, and wage for lowest earner
echo "LOWEST WAGE EARNER:"
cat "$1" | grep -v gender | sort -t , -k 4 -n | head -n 1 | cut -d , -f 1,2,4

