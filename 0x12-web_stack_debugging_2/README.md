# Web Stack Debugging #2

## Project Overview

This project aims to help you gain experience in web stack debugging, specifically focusing on running software as another user on an Ubuntu 20.04 LTS environment. You will create a Bash script to execute the `whoami` command under a specified user.

## Project Details

- **Project Start Date:** September 18, 2023, 6:00 AM
- **Project Deadline:** September 20, 2023, 6:00 AM
- **Checker Release:** September 19, 2023, 1:12 PM

## Requirements

- All files must be interpreted on Ubuntu 20.04 LTS.
- All files should end with a new line.
- A `README.md` file at the root of the project folder is mandatory.
- All Bash script files must be executable.
- Bash scripts must pass Shellcheck without any errors.
- Bash scripts must run without errors.
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`.
- The second line of all Bash scripts should be a comment explaining what the script does.

## Task 0: Run Software as Another User (mandatory)

In this task, you need to create a Bash script that accepts one argument (the username) and runs the `whoami` command under the specified user.

**Usage:**

```bash
./script_name.sh <username>

