#/bin/bash
set -x
yum install wget -y;
cd /root;
wget https://raw.githubusercontent.com/hassanhashmy/scripts/master/RepoInstall.sh
chmod +x RepoInstall.sh
./RepoInstall.sh
yum update -y;
yum install kernel-ml.x86_64
awk -F\' '$1=="menuentry " {print i++ " : " $2}' /etc/grub2.cfg
grub2-set-default 0
package-cleanup --oldkernels --count=1