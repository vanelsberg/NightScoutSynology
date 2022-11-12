#!/bin/bash

usesudo=sudo

# Restart container application
$usesudo docker-compose restart
# Show container status
$usesudo docker container ls
