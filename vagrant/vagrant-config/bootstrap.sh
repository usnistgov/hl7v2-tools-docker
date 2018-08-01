cd /tmp
sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y git

# Docker
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Verify that the key fingerprint is 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
sudo apt-key fingerprint 0EBFCD88
    # setup the stable repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"


sudo apt-get update -y
sudo apt-get install -y docker-ce
docker --version >> provisioning-log

# upgrade docker
sudo apt-get update -y
sudo apt-get remove docker docker-engine docker.io

# docker compose
sudo curl -L https://github.com/docker/compose/releases/download/1.15.0-rc1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version >> provisioning-log


cp -r ../../containers containers
cp -r ../../containers ../containers

