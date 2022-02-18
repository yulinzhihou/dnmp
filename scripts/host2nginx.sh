#!/bin/sh
NGINX_IP=$(ping nginx -c 1 -w 1 | sed '1{s/[^(]*(//;s/).*//;q}')

if [[ -n $1 ]]; then
    echo -e "${NGINX_IP}\t $1" >>/etc/hosts
fi




