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
2) copy the containers folder to vagrant
`    cp -r ../containers vagrant 
3) create data folder under vagrant folder 
    mkdir data 

4) boot up vagrant 
`    vagrant up
`
5) ssh to vagrant 
`vagrant ssh  
`
6) navigate to apps folder under vagrant/containers 
`cd containers/apps

7) start 
`    ./deploy.sh  
` 


