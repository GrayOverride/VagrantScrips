#!/bin/bash
sudo sed -i '$a deb http://nginx.org/packages/ubuntu/ lucid nginx' /etc/apt/sources.list
sudo sed -i '$a deb-src http://nginx.org/packages/ubuntu/ lucid nginx' /etc/apt/sources.list
sudo apt-get update
sudo apt-get install --force-yes -y nginx

sudo sed -i "$a server {
  listen 80 default deferred;
  # server_name example.com;
  root /home/username/apps/projectname/current/public;

  location ^~ /assets/ {
    gzip_static on;
    expires max;
    add_header Cache-Control public;
  }

  try_files $uri/index.html $uri @unicorn;
  location @unicorn {
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header Host $http_host;
    proxy_redirect off;
    proxy_pass http://unicorn;
  }

  error_page 500 502 503 504 /500.html;
  client_max_body_size 4G;
  keepalive_timeout 10;
}" /etc/nginx/nginx.conf

echo "nginx ska vara konfat"