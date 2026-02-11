# Shell Processes and Signals

This directory contains bash scripts demonstrating process management and signal handling in Linux.

## Tasks

0. **0-what-is-my-pid** - Display the script's own PID
1. **1-list_your_processes** - Display all running processes in hierarchy
2. **2-show_your_bash_pid** - Display lines containing bash using ps and grep
3. **3-show_your_bash_pid_made_easy** - Display bash process PIDs using pgrep
4. **4-to_infinity_and_beyond** - Display message indefinitely with sleep
5. **5-dont_stop_me_now** - Stop the infinity script using kill
6. **6-stop_me_if_you_can** - Stop the infinity script using pkill
7. **7-highlander** - Display message with SIGTERM trap handler
8. **67-stop_me_if_you_can** - Stop the highlander script
9. **8-beheaded_process** - Kill the highlander script with SIGKILL
10. **10-process_and_pid_file** - Advanced signal handling with PID file
11. **11-manage_my_process** - Init script to manage a daemon process
12. **manage_my_process** - Background process that writes to file

## Key Concepts

- **PID**: Process ID - unique identifier for each process
- **Signals**: Software interrupts sent to processes
  - SIGTERM (15): Graceful termination request
  - SIGKILL (9): Force kill (cannot be caught)
  - SIGINT (2): Interrupt (Ctrl+C)
  - SIGQUIT (3): Quit signal
- **trap**: Command to catch and handle signals
- **$$**: Variable containing current script's PID
- **&**: Run process in background
- **Daemon**: Background process detached from terminal

## Usage

Make scripts executable:
```bash
chmod +x <script-name>
```

Run scripts:
```bash
./<script-name>
```

For daemon management:
```bash
sudo ./11-manage_my_process start
sudo ./11-manage_my_process stop
sudo ./11-manage_my_process restart
```

## Requirements

- Ubuntu 20.04 LTS
- All scripts must pass Shellcheck
- First line: `#!/usr/bin/env bash`
- Second line: Comment explaining the script
