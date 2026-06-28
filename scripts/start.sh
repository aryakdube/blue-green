#!/bin/bash
cd /home/ubuntu/app

aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 489922707121.dkr.ecr.ap-south-1.amazonaws.com

docker pull 489922707121.dkr.ecr.ap-south-1.amazonaws.com/node-bluegreen-app:latest

docker run -d -p 3000:3000 --name app 489922707121.dkr.ecr.ap-south-1.amazonaws.com/node-bluegreen-app:latest