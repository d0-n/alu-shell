0-iam_betty: Switches the current user to betty (exactly 8 characters).
1-who_am_i: Prints the effective username of the current user.
2-groups: Prints all groups the current user belongs to.
3-new_owner: Changes the owner of the file hello to betty.
4-empty: Creates an empty file called hello.
5-execute: Adds execute permission to the owner of hello.
6-multiple_permissions: Adds execute for owner/group and read for others.
7-everybody: Adds execute permission for everyone.
8-James_Bond: Sets hello permissions: owner/group none, others all.
9-John_Doe: Sets hello mode to -rwxr-x-wx.
10-mirror_permissions: Sets hello’s mode same as olleh.
11-directories_permissions: Adds execute permission to all subdirectories only.
12-directory_permissions: Creates directory my_dir with mode 751.
13-change_group: Changes group owner of hello to school.
14-change_owner_and_group: Changes owner to vincent and group to staff for all files/dirs.
15-symbolic_link_permissions: Changes owner/group of symbolic link _hello.
16-if_only: Changes owner of hello to vincent only if owned by guillaume.
