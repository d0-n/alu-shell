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

# 3. The long format
create_script "3-listfiles" "ls -l" "Displays current directory contents in long format."

# 4. Hidden files
create_script "4-listmorefiles" "ls -la" "Displays current directory contents including hidden files, in long format."

# 5. I love numbers
create_script "5-listfilesdigitonly" "ls -lan" "Displays directory contents in long format with numeric user/group IDs, including hidden files."

# 6. Welcome
create_script "6-firstdirectory" "mkdir /tmp/my_first_directory" "Creates a directory named my_first_directory in /tmp."

# 7. Betty in my first directory
create_script "7-movethatfile" "mv /tmp/betty /tmp/my_first_directory/" "Moves the file betty into /tmp/my_first_directory."

# 8. Bye bye Betty
create_script "8-firstdelete" "rm /tmp/my_first_directory/betty" "Deletes the file betty from /tmp/my_first_directory."

# 9. Bye bye My first directory
create_script "9-firstdirdeletion" "rmdir /tmp/my_first_directory" "Deletes the directory /tmp/my_first_directory."

# 10. Back to the future
create_script "10-back" "cd -" "Changes working directory to the previous one."

# 11. Lists
create_script "11-lists" "ls -la . .. /boot" "Lists all files in current dir, parent dir, and /boot in long format."

# 12. File type
create_script "12-file_type" "file /tmp/iamafile" "Prints the type of the file named iamafile in /tmp."

# 13. We are symbols, and inhabit symbols
create_script "13-symbolic_link" "ln -s /bin/ls __ls__" "Creates a symbolic link named __ls__ to /bin/ls."

# 14. Copy HTML files
create_script "14-copy_html" "cp -u *.html .." "Copies HTML files to parent dir if newer or not existing."

# 15. Let’s move
create_script "15-lets_move" "mv [A-Z]* /tmp/u" "Moves all files starting with uppercase letters to /tmp/u."

# 16. Clean Emacs
create_script "16-clean_emacs" "rm *~" "Deletes all files ending with ~ in current directory."

# 17. Tree
create_script "17-tree" "mkdir -p welcome/to/school" "Creates directories welcome/, welcome/to/, and welcome/to/school."
