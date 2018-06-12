echo "----------checking softwares-----------"
echo "enter a service name"
read ser
systemctl status $ser > t.txt
k="$(head -1 t.txt)"
if [ "$k" == "Unit $ser.service could not be found:" ];then
  echo "service not available" 
  echo "do you install the software(Y/N)?"
  read q
  if [ "$q"== "Y];then
      yes | sudo yum install $ser
      echo "service is installed"
  else
      echo "service not installed"
  fi
else
    echo "service is available"
    echo "do you want to unintsall (Y/N)"
    read q
    if [ "$q"=="Y"];then
	yes | sudo yum remove $ser
        echo "uninstall done"
    else
       echo "uninstall is not done"
    fi
fi
