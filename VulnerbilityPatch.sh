#/bin/bash
set -x
yum install wget -y;
cd /root;
wget https://raw.githubusercontent.com/hassanhashmy/scripts/master/RepoInstall.sh
chmod +x RepoInstall.sh
./RepoInstall.sh
yum update -y;