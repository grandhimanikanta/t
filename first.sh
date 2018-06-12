echo "largest file"

cd /
k=$(ls -S | head -1)
sudo tar -cf /tmp/mk.tar $k
echo "suceesfully tar and maoved into tmp"
