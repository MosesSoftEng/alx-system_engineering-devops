# 0x0F. Load balancer

## 0. Double the number of webservers


Enter web-01
ssh ubuntu@3.235.227.53

Upload file
./0-transfer_file server-setup 3.235.227.53 ubuntu ~/.ssh/school
./0-transfer_file unistall-nginx 3.235.227.53 ubuntu ~/.ssh/school


Enter web-02
Initial connection
ssh -i ~/.ssh/school ubuntu@3.235.251.139

Subsequent connection
ssh ubuntu@3.235.251.139

Upload file
./0-transfer_file server-setup 3.235.251.139 ubuntu ~/.ssh/school
./0-transfer_file unistall-nginx 3.235.251.139 ubuntu ~/.ssh/school


Server setup file
server-setup file
chmod +x server-setup
shellcheck server-setup

Upload file to server
./0-transfer_file server-setup 3.235.251.139 ubuntu ~/.ssh/school

In server execute file
./server-setup > /dev/null 2>&1


## Insert commands to nginx config file using sed command
Inser after server_name _ configuration

sed -i 's/server_name _/&\nDo you like programming?/' test_replace_file


## Test server endpoints
Inside server
curl localhost
curl -Is localhost

From another server
curl <ip address>
curl -Is <ip address>

## 404 error page nginx configuration
    error_page 404 /custom_404.html;
    location /custom_404.html {
        root /var/www/html;
        internal;
    }

### Test error page
curl localhost/xyz
curl -sI localhost/xyz

## Permamanet redirect
	location /redirect_me {
		return 301 http://github.com/;
	}

### Test permanent redirect
curl localhost/redirect_me
curl -sI localhost/redirect_me

## Uninstall nginx
sudo service nginx stop
sudo apt-get purge -y nginx nginx-common
sudo apt-get -y autoremove
sudo rm -rf /etc/nginx


chmod +x unistall-nginx
shellcheck unistall-nginx


# Upload server setup file to both server
chmod +x server-setup
shellcheck server-setup
./0-transfer_file server-setup 3.235.227.53 ubuntu ~/.ssh/school
ssh ubuntu@3.235.227.53 cat server-setup

./0-transfer_file server-setup 3.235.251.139 ubuntu ~/.ssh/school
ssh ubuntu@3.235.251.139 cat server-setup

Execute 
./server-setup > /dev/null 2>&1

ssh ubuntu@3.235.227.53 ./server-setup > /dev/null 2>&1
ssh ubuntu@3.235.251.139 ./server-setup > /dev/null 2>&1

Test
curl localhost
curl localhost/xyz
curl localhost/redirect_me


## Execute server commands without entering the server



# Taks
## 0. Double the number of webservers
n this first task you need to configure web-02 to be identical to web-01. Fortunately, you built a Bash script during your web server project, and they’ll now come in handy to easily configure web-02. Remember, always try to automate your work!

```bash
chmod +x 0-custom_http_response_header
shellcheck 0-custom_http_response_header
./0-transfer_file 0-custom_http_response_header 3.235.227.53 ubuntu ~/.ssh/school
./0-transfer_file 0-custom_http_response_header 3.235.251.139 ubuntu ~/.ssh/school

ssh ubuntu@3.235.227.53 ./0-custom_http_response_header > /dev/null 2>&1
ssh ubuntu@3.235.251.139 ./0-custom_http_response_header > /dev/null 2>&1

curl -sI 3.235.227.53 | grep X-Served-By
curl -sI 3.235.251.139 | grep X-Served-By
```
