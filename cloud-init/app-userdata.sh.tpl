#!/bin/bash
yum install -y nginx
systemctl enable nginx
systemctl start nginx
echo '<h1>Hello from $(hostname)</h1>' > /usr/share/nginx/html/index.html
