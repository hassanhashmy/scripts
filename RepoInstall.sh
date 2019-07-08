#/bin/bash
set -x
cd /etc/yum.repos.d;
rm -rf *
wget https://raw.githubusercontent.com/hassanhashmy/hash/master/hash.repo
yum clean all;
yum makecache;
yum repolist;

