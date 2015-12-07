#!/bin/sh
# Author: unix1986
# Usage:  Input:  sh printn.sh 10 'hello world!'
#         Output: 10行 hello world!
seq $1 | xargs -i echo $2
