DEV_PORT=$(kubectl get services -o wide | awk 'FNR == 4 {print $5}')
str={$DEV_PORT}
#remove everything before : from str
port=${str#*:}
#remove everything after / from port
port=${port%%/*}
echo $port
