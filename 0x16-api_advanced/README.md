# Reddit API Project

This project involves creating Python scripts to interact with the Reddit API. You will learn how to make API calls, handle pagination, parse JSON responses, and perform various tasks using the Reddit API.

## Project Details

- Author: Tim Britton
- Cohort: #1
- Project Weight: 1
- Start Date: October 10, 2023, 6:00 AM
- End Date: October 11, 2023, 6:00 AM
- Checker Release Date: October 10, 2023, 12:00 PM

## Background Context

Questions involving APIs are common in technical interviews and real-world applications. This project focuses on using the Reddit API for practice. Reddit provides numerous endpoints, many of which don't require authentication, making it an excellent resource for learning. By completing this project, you'll become more comfortable with API calls, which can be valuable for technical interviews and personal projects.

## Learning Objectives

By the end of this project, you should be able to:

- Read API documentation to find the endpoints you need.
- Use an API with pagination.
- Parse JSON results from an API.
- Make recursive API calls.
- Sort a dictionary by value.

## Requirements

### General

- Allowed Editors: vi, vim, emacs
- Code will be interpreted/compiled on Ubuntu 20.04 LTS using Python 3.4.3
- All files should end with a new line.
- The first line of all files should be `#!/usr/bin/python3`.
- Imported libraries must be organized in alphabetical order.
- Include a `README.md` file at the root of the project folder.
- Code should follow the PEP 8 style guidelines.
- All files must be executable.
- The length of your files will be tested using `wc`.
- All modules should have documentation (use `python3 -c 'print(__import__("my_module").__doc__)'`).

### Libraries

- You must use the `Requests` module for sending HTTP requests to the Reddit API.

## Tasks

### 0. How many subs? (mandatory)

Write a Python function that queries the Reddit API and returns the number of subscribers (total subscribers, not active users) for a given subreddit. If the subreddit is invalid, the function should return 0.

Example usage:

```shell
$ python3 0-main.py programming
756024
$ python3 0-main.py this_is_a_fake_subreddit
