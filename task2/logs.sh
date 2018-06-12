echo "-----------send a logs to a mail----------"


sudo ls /var/log > lo.txt  

cat lo.txt | mail -s "logs" manikanta.22121996@gmail.com 
