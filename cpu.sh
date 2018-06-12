echo " server health checkup"

echo " cpu details"
lscpu
 
echo "memory details"
free -h |head -2
 
echo "diskspace"
 
df /home

echo "laod average"

uptime 
