#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y 
sudo apt install -y mysql-client -y

mysql -h vprofileapp-rds.cu5kou6481uv.us-east-1.rds.amazonaws.com -u admin -p'rsA1oqV>f-]*|odz-0>_.jmp3oAz' accounts
git clone https://github.com/hiddenclue0/vprofileApp.git
mysql -h vprofileapp-rds.cu5kou6481uv.us-east-1.rds.amazonaws.com -u admin -p'rsA1oqV>f-]*|odz-0>_.jmp3oAz' accounts < vprofileApp/src/main/resources/db_backup.sql

