#!/bin/bash



# Function to create each script
create_script(){
  filename=$1
  command=$2
  description=$3

  echo "#!/bin/bash" > $filename
  echo "$command" >> $filename
  chmod u+x $filename

  echo "$filename: $description" >> README.md
}

# 0. Hello World
create_script "0-hello_world" "echo \"Hello, World\"" "Prints 'Hello, World' followed by a new line."

# 1. Confused smiley
create_script "1-confused_smiley" "echo \"\\\"(Ôo)'\"" "Displays a confused smiley."

# 2. Display /etc/passwd
create_script "2-hellofile" "cat /etc/passwd" "Displays the content of /etc/passwd."

# 3. Display /etc/passwd and /etc/hosts
create_script "3-twofiles" "cat /etc/passwd /etc/hosts" "Displays the content of /etc/passwd and /etc/hosts."

# 4. Last 10 lines of /etc/passwd
create_script "4-lastlines" "tail -n 10 /etc/passwd" "Displays the last 10 lines of /etc/passwd."

# 5. First 10 lines of /etc/passwd
create_script "5-firstlines" "head -n 10 /etc/passwd" "Displays the first 10 lines of /etc/passwd."

# 6. Third line of iacta
create_script "6-third_line" "head -n 3 iacta | tail -n 1" "Displays the third line of iacta."

# 7. Special filename
create_script "7-file" "echo \"Best School\" > \"\\*\\\\'\\\"Best School\\\"\\'\\\\*\\$\\?\\*\\*\\*\\*\\*:)\"" "Creates a file with a special name containing 'Best School'."

# 8. Save current state
create_script "8-cwd_state" "ls -la > ls_cwd_content" "Writes ls -la output into ls_cwd_content."

# 9. Duplicate last line
create_script "9-duplicate_last_line" "tail -n 1 iacta >> iacta" "Duplicates the last line of iacta."

# 10. No more JS
create_script "10-no_more_js" "find . -type f -name \"*.js\" -delete" "Deletes all .js files in current dir and subdirs."

# 11. Count directories
create_script "11-directories" "find . -type d ! -path . ! -path ./.. | wc -l" "Counts directories and subdirectories excluding . and .."

# 12. Newest files
create_script "12-newest_files" "ls -t | head -n 10" "Displays the 10 newest files in current directory."

# 13. Unique words
create_script "13-unique" "sort | uniq -u" "Prints only words that appear exactly once."

# 14. Find 'root'
create_script "14-findthatword" "grep \"root\" /etc/passwd" "Displays lines containing 'root' from /etc/passwd."

# 15. Count 'bin'
create_script "15-countthatword" "grep -c \"bin\" /etc/passwd" "Counts lines containing 'bin' in /etc/passwd."

# 16. Root + 3 lines after
create_script "16-whatsnext" "grep -A 3 \"root\" /etc/passwd" "Displays 'root' lines and 3 after them."

# 17. Hide 'bin'
create_script "17-hidethisword" "grep -v \"bin\" /etc/passwd" "Displays lines not containing 'bin'."

# 18. Letters only
create_script "18-letteronly" "grep \"^[[:alpha:]]\" /etc/ssh/sshd_config" "Displays lines starting with a letter."

# 19. A to Z
create_script "19-AZ" "tr 'Ac' 'Ze'" "Replaces A→Z and c→e."

# 20. Without C
create_script "20-hiago" "tr -d 'Cc'" "Removes all c and C from input."

# 21. Reverse
create_script "21-reverse" "rev" "Reverses input."

# 22. Users and homes
create_script "22-users_and_homes" "cut -d: -f1,6 /etc/passwd | sort" "Displays all users and their home directories sorted."

# 23. Empty casks
create_script "23-empty_casks" "find . -empty -printf \"%f\\n\"" "Finds all empty files and directories."

# 24. GIFs
create_script "24-gifs" "find . -type f -name \"*.gif\" -printf \"%f\\n\" | sed 's/\\.gif\$//' | sort -f" "Lists all .gif files without extension, sorted case-insensitive."

# 25. Acrostic
create_script "25-acrostic" "cut -c1 | tr -d '\\n'; echo" "Decodes acrostics using first letter of each line."

# 26. Biggest fan
create_script "26-the_biggest_fan" "cut -f1 | sort | uniq -c | sort -nr | head -n 11 | awk '{print \$2}'" "Displays top 11 hosts/IPs with most requests from TSV logs."

# Git commands
git add .
git commit -m "Completed io_redirections_and_filters automation"
git push
