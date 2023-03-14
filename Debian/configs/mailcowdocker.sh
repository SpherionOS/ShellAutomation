#! /bin/bash

cd opt

sudo su

git clone https://github.com/mailcow/mailcow-dockerized

cd mailcow-dockerized

./generate_config.sh


exit

cd mailcow-dockerized

sudo docker-compose up -d

sudo docker-compose ps

telnet 127.0.0.1 25

