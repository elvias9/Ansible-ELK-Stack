#!/bin/bash
aws ec2 describe-instances --filters "Name=tag:Name, Values=Kibana" | jq -r '.Reservations[].Instances[].PublicIpAddress' > kibana-ip.txt
aws ec2 describe-instances --filters "Name=tag:Name, Values=elasticsearch-server" | jq -r '.Reservations[].Instances[].PrivateIpAddress' > elasticsearch-ip.txt
aws ec2 describe-instances --filters "Name=tag:Name, Values=Logstash" | jq -r '.Reservations[].Instances[].PrivateIpAddress' > logstash-ip.txt
