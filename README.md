#**** README #

This folder contains files related to the Docker artifacts to configure the needed containers:

 - container for tcamt 
 - container for igamt 
 - container for gvt 
 - container for the web server


**Deployment** 


## Prerequisits
If you do not have vagrant installed locally, Follow these steps: 
1) Download & install virtual box:http://download.virtualbox.org/virtualbox/5.2.16/ 
2) Download & install vagrant: https://www.vagrantup.com/downloads.html 


##  Local Install
1) Navigate to vagrant folder
`    cd vagrant 
2) boot up vagrant 
`    vagrant up
`
3) ssh to vagrant 
`vagrant ssh  
`
4) Start the containers
`cd containers/apps`
`sudo ./deploy.sh` 

5) On your browser navigate to http://192.168.44.20:8091/


## Local redeployment (with updates) 
1- If data have changed: delete the thed data/ folder under vagrant 
2- cd containers/apps
3- sudo ./deploy.sh

