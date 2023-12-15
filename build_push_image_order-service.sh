!/bin/bash

# melakukan build dari dockerfile
docker build -t order-service:v1 .

# cek list docker images yang ada
docker images

# push docker images ke docker hub
cat ../dockerpass.txt | docker login --username jefriadisetiawan --password-stdin
docker tag order-service:v1 jefriadisetiawan/order-service:v1
docker push jefriadisetiawan/order-service:v1
