
cp mongod.repo /etc/yum.repos.d/mongod.repo
yum install mongodb-org -y
#update listen address from 127.0.0.1 to 0.0.0.0
systemctl enable mongod
systemctl start mongod
systemctl restart mongod