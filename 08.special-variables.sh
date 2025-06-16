#!/bin/bash
echo "All variables :$@"
echo "No of variables :$#"
echo "Script name:$0"
echo "All variables:$*" # another way
echo "current working directory:$PWD"
echo "current user name:$USER"
echo "current shell name:$SHELL"
echo "current date and time:$DATE"
echo "home directory:$HOME"
echo "Process ID of current shell:$$"
echo "PID of last background process:$!"

