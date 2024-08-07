#!/bin/bash

: <<'COMMENT'
This script installs htop on your Linux system. 
htop is an interactive system monitor, process viewer, and manager designed as an alternative to the Unix program top. 
It provides a dynamic and user-friendly interface that displays a constantly updated list of running processes, typically sorted by CPU usage.

COMMENT

command=htop

if command -v $command
then
    echo "$command is available, let's run it........."
else
    echo "$command is NOT available, installing it........."
sudo apt update && sudo apt install -y $command
fi

$command

