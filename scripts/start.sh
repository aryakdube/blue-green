#!/bin/bash
cd /home/ubuntu/app

aws ecr get-login-password --region ap-south-1 | \
docker login --username AWS --password-stdin <ECR_URI>

docker pull <ECR_URI>:latest

docker run -d -p 3000:3000 --name app <ECR_URI>:latest