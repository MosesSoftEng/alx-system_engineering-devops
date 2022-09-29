# 0x0E. Web stack debugging #1

chmod +x test_script
shellcheck test_script
./test_script


service nginx status


# Tasks
## 0. Nginx likes port 80
Using your debugging skills, find out what’s keeping your Ubuntu container’s Nginx installation from listening on port 80. Feel free to install whatever tool you need, start and destroy as many containers as you need to debug the issue. Then, write a Bash script with the minimum number of commands to automate your fix.

chmod +x 0-nginx_likes_port_80
shellcheck 0-nginx_likes_port_80


## 