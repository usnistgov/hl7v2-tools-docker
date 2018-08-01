./clean-all.sh
docker build -t ubuntu-base ../common/ubuntu-base
docker build -t java-base ../common/java-base
#docker build -t mongo-base ../common/mongo-base

docker-compose -f docker-compose.yml -f local.yml  up --build  -d

