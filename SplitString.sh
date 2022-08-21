#!/bin/bash

str={{ env.DEV_PORT }}
#remove everything before : from str
port=${str#*:}
#remove everything after / from port
port=${port%%/*}
echo $port
