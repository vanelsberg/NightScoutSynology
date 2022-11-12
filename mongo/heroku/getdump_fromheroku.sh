#!/bin/bash
source ../../.env

# Dump Atlas MongoDb database for https://xxxxx.herokuapp.com/
user=$HEROKU_user
password=$HEROKU_password
host=$HEROKU_host
db=$HEROKU_db


compress=--gzip
datadumpdir=./data/dumps

cmd="mongodump --uri mongodb+srv://$user:$password@$host/$db --out $datadumpdir $compress"
echo $cmd

# Run dump from container
sudo docker exec -it mongodb4 $cmd

echo "Done (datadump is on Docker volume)"
