#!/bin/bash

set -eux
cd $(dirname $0)

rm -rf ~/env.sh
ln -s $(pwd)/env.sh ~/env.sh

rm -rf /etc/systemd/system/isucari.*
ln -s $(pwd)/etc/systemd/system/isucari.* /etc/systemd/system/

rm -rf /lib/systemd/system/nginx.service
ln -s $(pwd)/lib/systemd/system/nginx.service /lib/systemd/system/

rm -rf /lib/systemd/system/mysql.service
ln -s $(pwd)/lib/systemd/system/mysql.service /lib/systemd/system/

rm -rf /etc/nginx/nginx.conf
ln -s $(pwd)/etc/nginx/nginx.conf /etc/nginx/nginx.conf

rm -rf /etc/mysql/my.cnf
ln -s $(pwd)/etc/mysql/my.cnf /etc/mysql/my.cnf

rm -rf /etc/mysql/conf.d
ln -s $(pwd)/etc/mysql/conf.d /etc/mysql/conf.d

rm -rf /etc/mysql/mysql.conf.d
ln -s $(pwd)/etc/mysql/mysql.conf.d /etc/mysql/mysql.conf.d
