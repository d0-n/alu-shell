#!/bin/bash



# Function to create a script and add description to README.md
create_script() {
  filename=$1
  command=$2
  description=$3

  echo "#!/bin/bash" > $filename
  echo "$command" >> $filename
  chmod u+x $filename

  echo "$filename: $description" >> README.md
}

# 0. Create an alias
create_script "0-alias" "alias ls='rm *'" "Creates an alias named ls with value rm *."

# 1. Hello you
create_script "1-hello_you" "echo \"hello \$USER\"" "Prints hello user, where user is the current Linux user."

# 2. The path to success is to take massive, determined action
create_script "2-path" "export PATH=\"\$PATH:/action\"" "Adds /action to the PATH as the last directory."

# 3. If the path be beautiful, let us not ask where it leads
create_script "3-paths" "echo \"\$PATH\"|tr ':' '\n'|grep -c ." "Counts the number of directories in the PATH."

# 4. Global variables
create_script "4-global_variables" "printenv" "Lists all environment variables."

# 5. Local variables
create_script "5-local_variables" "set" "Lists all local variables, environment variables, and functions."

# 6. Local variable
create_script "6-create_local_variable" "BEST=School" "Creates a local variable BEST with value School."

# 7. Global variable
create_script "7-create_global_variable" "export BEST=School" "Creates a global variable BEST with value School."

# 8. Every addition to true knowledge is an addition to human power
create_script "8-true_knowledge" "echo \$((TRUEKNOWLEDGE+128))" "Prints TRUEKNOWLEDGE + 128."

# 9. Divide and rule
create_script "9-divide_and_rule" "echo \$((POWER/DIVIDE))" "Prints POWER divided by DIVIDE."

# 10. Love is anterior to life, posterior to death, initial of creation, and the exponent of breath
create_script "10-love_exponent_breath" "echo \$((BREATH**LOVE))" "Prints BREATH to the power LOVE."

# 11. There are 10 types of people in the world -- Those who understand binary, and those who don't
create_script "11-binary_to_decimal" "echo \$((2#\$BINARY))" "Converts a number from base 2 to base 10."

# 12. Combination
create_script "12-combinations" "printf \"%s\n\" {a..z}{a..z}|grep -v oo" "Prints all 2-letter combinations except oo."

# 13. Floats
create_script "13-print_float" "printf \"%.2f\n\" \"\$NUM\"" "Prints NUM with two decimal places."

# 14. Decimal to Hexadecimal
create_script "14-decimal_to_hexadecimal" "printf \"%x\n\" \"\$DECIMAL\"" "Converts DECIMAL from base 10 to base 16."

# 15. Everyone is a proponent of strong encryption
create_script "15-rot13" "tr 'A-Za-z' 'N-ZA-Mn-za-m'" "Encodes/decodes text using rot13."

# 16. The eggs of the brood need to be an odd number
create_script "16-odd" "paste - -|cut -f1" "Prints every other line from input, starting with the first."

# 17. I'm an instant star. Just add water and stir.
create_script "17-water_and_stir" "echo \$((5#\$(echo \"\$WATER\"|tr 'water' '01234')+5#\$(echo \"\$STIR\"|tr 'stir.' '01234')))|tr '01234567' 'bestchol'" "Adds WATER and STIR in custom bases and outputs in base bestchol."

