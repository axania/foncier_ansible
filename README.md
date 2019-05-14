# foncier Ansible Automations #

This repo contains the ansible playbook (scripts) for a complete installation of foncier project.

### What is this repository for? ###

* Installs a foncier (DB + API + UI) instance.
* Learn about foncier code [here](https://bitbucket.org/ucis/foncier)
* More info about foncier on Confluence [here](https://sogema.atlassian.net/wiki/spaces/SOG/pages/67141692/foncier)

### Environments ###
 
* Please look into the inventory + vars project [here](https://bitbucket.org/ucis/foncier_ansible_sogema) 

### Artifacts ###

* 'certs' folder contains self-signed certificate files used by Nginx (for **foncier-ui** service).
* 'java'  folder contains a truststore replacement (for **foncier-api** service) with the addition of 'pp-ml-foncier.sogematech.com' certificate.
* 'pp-ml-foncier.sogematech.com.pem' file is the certificate within PP-ML environment (for **haproxy** service).

### How to set up ###

Make sure you have Ansible 2.5 installed. 

```
$ sudo apt-get update && sudo apt-get -y upgrade
$ sudo apt-get install python-pip
$ sudo pip install 'ansible'

```
#### Install Mongo ####

ansible-playbook -i <env-folder>/<inventory-file> mongo.yml --ask-sudo --ask-vault-pass


#### Install UI and API (in Containers) ####

ansible-playbook -i <env-folder>/<inventory-file> docker.yml --ask-sudo --ask-vault-pass


#### Vault passess ####

Talk to the team.

### Authors ###

* Marcos Garcia - marcos.garcia@sogematech.com
* Sebastien Bonami - sebastien.bonami@sogematech.com