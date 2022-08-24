!#bin/bash
timestamp=$(date +%Y%m%d%H%M%S)  
sudo docker build -t assignment:${timestamp} ./../dockerize/
cp script.yaml new-app.yaml
sed -i 's/- image.* */- image: assignment:'${timestamp}'/g' ./new-app.yml
kubectl diff -f new-app.yml
