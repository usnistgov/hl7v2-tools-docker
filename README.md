#**** README #

This folder contains files related to the Docker artifacts to configure the needed containers:

 - container for tcamt 
 - container for igamt 
 - container for gvt 
 - container for the web server


**Deployment** 

**Local** 

1) cp hl7-igamt.war  containers/apps/hl7-igamt/hl7-igamt.war 

2) cp hl7-auth.war  containers/apps/hl7-auth/hl7-auth.war 

3) Update AUTH_HOST's host ip adress in containers/apps/hl7-igamt/config/config.env 

4) Execute ./containers/apps/deploy.sh 

5) Nagivate to 
- IGAMT: https://localhost/igamt 
- IGAMT DB: https://localhost/igamt-db 
- AUTH DB: https://localhost/auth-db 


`./containers/apps/deploy.sh 
`


**Development** 
`./containers/apps/deploy-dev.sh 
`

**Production** 
`./containers/apps/deploy-prod.sh 
`