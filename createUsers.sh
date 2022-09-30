#!/bin/bash

for i in 1 2 3 
do 
useradd user$i 
passwd user$i
done
for i in "ec2" "rds" "lambda" 
do 
groupadd $i 
done 

usermod -g ec2 user1 
usermod -g rds user2
usermod -g lambda user3 

userdel -f user1
userdel -f user2
userdel -f user3
