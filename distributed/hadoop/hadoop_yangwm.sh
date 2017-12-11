#!/bin/sh
# auth:yangwm
# note:install hadoop-2
  # must use root to run this script
  # add the hadoop version to latest stable one.
  # add user to run hadoop , default user is "hadoop"
hadoop_file=hadoop-2.7.4.tar.gz
install_user=hadoop
hadoop_version=${hadoop_file%.tar.gz}
echo "install hadoop version is: ${hadoop_version%.tar.gz}"
url=https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/stable/${hadoop_version}
mkdir /usr/local/src && cd /usr/local/src
wget ${url}
tar zxf ${hadoop_version}
cp /usr/local/
