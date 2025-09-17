#!/bin/bash
yum update -y
amazon-linux-extras install -y nginx1
systemctl enable nginx
systemctl start nginx

echo "<h1>${project_name} - Hello from $(hostname)</h1>" > /usr/share/nginx/html/index.html
