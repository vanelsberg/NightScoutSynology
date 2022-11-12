#!/bin/bash
source ../../.env

user=$MONGODB_ADMINUSERNAME
password=$MONGODB_ADMINPASSWORD
host=localhost
port=27017
db=$MONGO_INITDB_DATABASE
dodropcollection="--drop"

datadumpdir=./data/dumps/$HEROKU_db/

cmd="mongorestore ${dodropcollection} -v -u ${user} -p ${password} --host ${host} --port 27017 --authenticationDatabase admin --db ${db} --gzip ${datadumpdir}"
echo $cmd

# Run restore from container
sudo docker exec -it mongodb4 $cmd
