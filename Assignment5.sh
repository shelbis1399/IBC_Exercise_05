


# This is the second part of the assignment
# Returns the gender, yearsExperience, and wage for highest earner
cat "$1" | sort -t ',' -k 4 -n -r | head -n 1 | cut -d , -f 1,2,4


