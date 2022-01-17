#!/bin/bash
aws ec2 describe-instances --filters "Name=tag:Name, Values=Kibana" | jq -r '.Reservations[].Instances[].PublicIpAddress | select( . != null )' > kibana-ip.txt
aws ec2 describe-instances --filters "Name=tag:Name, Values=elasticsearch-server" | jq -r '.Reservations[].Instances[].PrivateIpAddress | select( . != null )' > elasticsearch-ip.txt
aws ec2 describe-instances --filters "Name=tag:Name, Values=Logstash" | jq -r '.Reservations[].Instances[].PrivateIpAddress | select( . != null )' > logstash-ip.txt
aws ec2 describe-instances --filters "Name=tag:Name, Values=Test Server Syslog" | jq -r '.Reservations[].Instances[].PrivateIpAddress | select( . != null )' > apache-ip.txt
aws ec2 describe-instances --filters "Name=tag:Name, Values=Test Server Apache" | jq -r '.Reservations[].Instances[].PrivateIpAddress | select( . != null )' > syslog-ip.txt
