# Team-1---ELK-Stack
>__Team:__ Olga Lugai, Ashley Ritchie, Himat Varsani, Shane Frost, Elvia Sicuro, Courtney Bawuah

### Two repository created 
>1. Terraform Infrastructure:  __Repo: Team-1-Terraform-Infrastructure__
>2. Ansible - ELK Stack: __Repo: Team-1-ELK-Stack__


Development Branch
----------------------------
The development branch was created to merge all the individual repository into this single repository for testing the infrastructure
> #### FOLDER: group_vars/all:
***File:*** metricbeat.yml <br/>
***File:*** variables.yml </br>
A variable declation for MetricBeat file building a template, configuration, and logging configuration. The variable.yml file is declared so that the ip address for each apps in a text file. 
<br/><br/>
> #### FOLDER: metricbeat/template:
***File:*** metricbeat.yml <br/>
MetricBeat module configuration, elasticsearch template settings, Kibana, processors, and the output and monitor setup. The settings control to Kibana and Kibana API specifying the port 5601. Setting the output for the Elasticsearch and the Logstash.
<br/><br/>
> #### FOLDER: nginx/kibana:
***File:*** kibana.yml <br/>
Installing and configuration playbook for Kibana
<br/><br/>
> #### FOLDER: repo/elastic.repo:
***File:*** elastic.repo <br/>
Setting up the sys_log and the repo using the packages and the yum
<br/><br/>
***File:*** ansible.cfg<br/>
setting up the inventory, key checking, pipeline, and the ssh connection using a temporary path ansible file to ./ssh.config - Config file
<br/><br/>
***File:*** apache.yml<br/>
apache yml file to configure the elasticsearch, FileBeat, and MetricBeat
<br/><br/>
***File:*** elasticsearch.yml<br/>
elasticsearch yml file to configuration of apt cache, installing and downloading the package. Configuring the connnection and the port of 9200 for elasticsearch
<br/><br/>
***File:*** fetch-ips.sh<br/>
Bash scripting to collect each ip address and place it into a text file. Looks for the basion host, and configure it in a ssh config file. The script helps with enabling the service when the ip address for the vpc changes. 
<br/><br/>
***File:*** hosts.yml<br/>
ssh configuration to use the correct basion host. Each app will grap the correct ip address assign to each and enable to check the service status availability 
<br/><br/>
***File:*** Kibana.yml<br/>
Kibana yml playbook to installing and downloading the package. Configuring the connnection for Kibana and connect to a reachable subnet host and connects to its services such as elasticsearch
<br/><br/>
***File:*** logstash.yml<br/>
logstash yml file to configuration of apt cache, installing and downloading the package. Configuring the connnection and the port of 5044 for logstash and connection to elasticsearch is established.
<br/><br/>
***File:*** playbook.yml<br/>
The main execution file to setup and run the server making sure that the connection for all the apps are established and connected.
<br/><br/>
***File:*** syslog.yml<br/>
A FileBeat yml file to configure connection to the log to check communication interaction to the servers.


