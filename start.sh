#!/bin/bash

usesudo=sudo

# Start container application
$usesudo docker-compose up -d
# Show container status
$usesudo docker container ls
