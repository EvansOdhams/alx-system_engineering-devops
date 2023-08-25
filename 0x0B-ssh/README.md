# 0x0B. SSH

## Description
This project is about learning SSH, keys, and how to connect to a remote server.

## Learning Objectives
- What is a server
- Where servers usually live
- What is SSH 
- How to create an SSH RSA key pair
- How to connect to a remote host using SSH RSA key pair
- The advantage of using `#!/usr/bin/env bash` instead of `/bin/bash`

## Setup
- You are given an Ubuntu 20.04 server to access via SSH using an RSA key pair
- The server IP, username, and private key are provided in the intranet profile
- The server already has your public key configured

## Tasks
- [ ] Generate a new SSH key pair on your local machine
- [ ] Write a Bash script to SSH into the remote server
- [ ] Create a file in your SSH home directory on the remote server
- [ ] Write a Bash script to check disk usage on the remote server

## Usage
1. Generate SSH keys locally with `ssh-keygen`
2. SSH into the remote server `ssh username@IP -i private_key`
3. Run Bash scripts to create files, check disk usage, etc

## Resources
- [SSH Crash Course](https://www.youtube.com/watch?v=hQWRp-FdTpc) 
- [Public Key Authentication for SSH](https://www.ssh.com/academy/ssh/public-key-authentication)
