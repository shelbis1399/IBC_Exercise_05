# This is the Exercise 5 answers.
# Usage: bash Assignment5.sh "wages.csv"


# This is the second part of the assignment
# Returns the gender, yearsExperience, and wage for highest earner
echo "HIGHEST WAGE EARNER:"
cat "$1" | sort -t ',' -k 4 -n -r | head -n 1 | cut -d , -f 1,2,4

# Returns the gender, yearsExperience, and wage for lowest earner
echo "LOWEST WAGE EARNER:"
cat "$1" | grep -v gender | sort -t , -k 4 -n | head -n 1 | cut -d , -f 1,2,4

#Returns the number of females in the top ten earners
echo "NUMBER OF FEMALES IN TOP 10 EARNERS:"
cat "$1" | sort -t ',' -k 4 -n -r | head -n 10 | grep female | wc -l

# This is the third part of the assignment
# This greps those with 16 years experience
collegeminima=$(cat "$1" | grep -v gender | sort -t , -k 4 -n | grep -E "[0-9],16," | cut -d ',' -f 4 | head -n 1)
highschoolminima=$(cat "$1" | grep -v gender | sort -t , -k 4 -n | grep -E "[0-9],12," | cut -d ',' -f 4 | head -n 1)
echo $collegeminima
echo $highschoolminima
echo "The difference between college minimum wage and high school minimum wage is"
echo "$collegeminima - $highschoolminima" | tr -d $'\r' | bc
echo $difference
