#!/bin/bash
#Ment to be run as root after buildout is done. Will obtain cert and install on nginx debian

cd /etc/nginx
ln -s /home/voteit/srv/man_buildout/etc/nginx.conf ./sites-available/man.conf
cd sites-enabled
ln -s ../sites-available/man.conf

service nginx stop
certbot certonly --standalone -d man.voteit.se
service nginx start
