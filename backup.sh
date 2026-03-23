#!/bin/bash

fa="Unkown_Files"

touch "$fa"

find /home/katemwaura -type f -name '*.txt' -exec ls -l {} \; | awk '{print $1, $9}' >> "$fa"
find /home/katemwaura -type f -name '*.sh' -exec ls -l {} \; | awk '{print $1, $9}' >> "$fa"
