#!/bin/sh

cat << 'EOF' >> /etc/yum.repos.d/mongodb-org-3.5.repo
[mongodb-org-3.5]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.5/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.5.asc
EOF

yum install -y mongodb-org-server
yum install -y mongodb-org-shell

cp /etc/mongod.conf{,.original}

systemctl is-enabled mongod
systemctl start mongod

