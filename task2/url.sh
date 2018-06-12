echo "-------------------url checking------------------"

echo "enter a url"
read url

curl -Is "$url" |head -1 > t.txt
grep  "200 OK" t.txt && l=1 || l=0

if [ "$l" -eq "0" ]
then
   
   echo "url is not working" |mail -s "checking" manikanta.22121996@gmail.com
else
   echo "status OK"
fi     
