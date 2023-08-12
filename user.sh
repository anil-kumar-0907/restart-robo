curl -sL https://rpm.nodesource.com/setup_lts.x | bash
cp managod.repo /etc/yum.repos.d/mango.repo
yum install nodejs -y
useradd roboshop
mkdir /app
curl -o /tmp/user.zip https://roboshop-artifacts.s3.amazonaws.com/user.zip
cd /app
unzip /tmp/user.zip
cp user.service /etc/systemd/system/user.service

cd /app
npm install
yum install mongodb-org-shell -y
mongo --host mangodb.ddevops.online </app/schema/user.js
systemctl daemon-reload
systemctl enable user
systemctl restart user




