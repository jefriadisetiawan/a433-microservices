!/bin/bash

# melakukan build dari dockerfile
docker build -t shipping-service:v1 .

# cek list docker images yang ada
docker images

# push docker images ke docker hub
cat ../dockerpass.txt | docker login --username jefriadisetiawan --password-stdin
docker tag shipping-service:v1 jefriadisetiawan/shipping-service:v1
docker push jefriadisetiawan/shipping-service:v1
