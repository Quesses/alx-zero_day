#!/usr/bin/env bash
# script for installing mysql-server version 5.7

sudo apt update
sudo apt-key add sqlv5.7_signature.key
sudo sh -c 'echo "deb http://repo.mysql.com/apt/ubuntu bionic mysql-5.7" >> /etc/apt/sources.list.d/mysql.list';
sudo apt-get update;
sudo apt-cache policy mysql-server;
sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*;
