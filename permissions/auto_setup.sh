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

# 0. My name is Betty
create_script "0-iam_betty" "su betty" "Switches the current user to betty (exactly 8 characters)."

# 1. Who am I
create_script "1-who_am_i" "whoami" "Prints the effective username of the current user."

# 2. Groups
create_script "2-groups" "groups" "Prints all groups the current user belongs to."

# 3. New owner
create_script "3-new_owner" "chown betty hello" "Changes the owner of the file hello to betty."

# 4. Empty!
create_script "4-empty" "touch hello" "Creates an empty file called hello."

# 5. Execute
create_script "5-execute" "chmod u+x hello" "Adds execute permission to the owner of hello."

# 6. Multiple permissions
create_script "6-multiple_permissions" "chmod ug+x,o+r hello" "Adds execute for owner/group and read for others."

# 7. Everybody!
create_script "7-everybody" "chmod a+x hello" "Adds execute permission for everyone."

# 8. James Bond
create_script "8-James_Bond" "chmod 007 hello" "Sets hello permissions: owner/group none, others all."

# 9. John Doe
create_script "9-John_Doe" "chmod 753 hello" "Sets hello mode to -rwxr-x-wx."

# 10. Look in the mirror
create_script "10-mirror_permissions" "chmod --reference=olleh hello" "Sets hello’s mode same as olleh."

# 11. Directories
create_script "11-directories_permissions" "chmod -R a+X */" "Adds execute permission to all subdirectories only."

# 12. More directories
create_script "12-directory_permissions" "mkdir -m 751 my_dir" "Creates directory my_dir with mode 751."

# 13. Change group
create_script "13-change_group" "chgrp school hello" "Changes group owner of hello to school."

# 14. Owner and group
create_script "14-change_owner_and_group" "chown vincent:staff *" "Changes owner to vincent and group to staff for all files/dirs."

# 15. Symbolic links
create_script "15-symbolic_link_permissions" "chown -h vincent:staff _hello" "Changes owner/group of symbolic link _hello."

# 16. If only
create_script "16-if_only" "chown --from=guillaume vincent hello" "Changes owner of hello to vincent only if owned by guillaume."

# Git commands
git add .
git commit -m "Completed permissions project automation"
git push
