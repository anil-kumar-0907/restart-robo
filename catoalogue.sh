curl -sL https://rpm.nodesource.com/setup_lts.x | bash
cp managod.repo /etc/yum.repos.d/mango.repo
yum install nodejs -y
useradd roboshop
mkdir /app
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
cd /app
unzip /tmp/catalogue.zip
cp catalogue.service /etc/systemd/system/catalogue.service

cd /app
npm install
yum install mongodb-org-shell -y
mongo --host mangodb.ddevops.online</app/schema/catalogue.js
systemctl daemon-reload
systemctl enable catalogue
systemctl start catalogue


