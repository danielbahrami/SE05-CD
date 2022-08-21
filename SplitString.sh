#!/bin/bash

str={{ env.DEV_PORT }}


#remove everything after / from str
port=${str#*:}
#remove everything after / from port
port=${port%%/*}

echo $port

{{ env.DEV_PORT }} == $port