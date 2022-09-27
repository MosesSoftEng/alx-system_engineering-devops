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

Enter lb-01 server
ssh -i ~/.ssh/school ubuntu@3.237.4.231

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

# Transfer the files to the server
./0-transfer_file 0-custom_http_response_header 3.235.227.53 ubuntu ~/.ssh/school
./0-transfer_file 0-custom_http_response_header 3.235.251.139 ubuntu ~/.ssh/school

# Confirm contents
ssh ubuntu@3.235.227.53 cat 0-custom_http_response_header
ssh ubuntu@3.235.251.139 cat 0-custom_http_response_header

# Execute script in server
ssh ubuntu@3.235.227.53 ./0-custom_http_response_header > /dev/null 2>&1
ssh ubuntu@3.235.251.139 ./0-custom_http_response_header > /dev/null 2>&1

curl -sI 3.235.227.53 | grep X-Served-By
curl -sI 3.235.251.139 | grep X-Served-By
```


## 1. Install your load balancer
sudo apt update
sudo apt install -y haproxy

haproxy -v

sudo sed -i '$aENABLED=1' /etc/default/haproxy


sudo vi /etc/haproxy/haproxy.cfg

frontend http_front
	bind *:80
	stats uri /haproxy?stats
	default_backend http_back

backend http_back
	balance roundrobin
	server 20738-web-01 3.235.227.53:80 check
	server 20738-web-02 3.235.251.139:80 check

cat /etc/haproxy/haproxy.cfg

Confirm if config file is valid
haproxy -f /etc/haproxy/haproxy.cfg -c

sudo service haproxy restart

curl -Is 3.237.4.231


chmod +x 1-install_load_balancer
shellcheck 1-install_load_balancer
./0-transfer_file 1-install_load_balancer 3.237.4.231 ubuntu ~/.ssh/school

ssh ubuntu@3.237.4.231 cat 1-install_load_balancer
ssh ubuntu@3.237.4.231 ./1-install_load_balancer > /dev/null 2>&1
ssh ubuntu@3.237.4.231 cat /etc/default/haproxy
ssh ubuntu@3.237.4.231 cat /etc/haproxy/haproxy.cfg


## Add a custom HTTP header with Puppet
chmod +x 2-puppet_custom_http_response_header.pp
puppet-lint 2-puppet_custom_http_response_header.pp

./0-transfer_file 2-puppet_custom_http_response_header.pp 3.235.227.53 ubuntu ~/.ssh/school
ssh ubuntu@3.235.227.53 cat 2-puppet_custom_http_response_header.pp

ssh ubuntu@3.235.227.53 sudo puppet apply 2-puppet_custom_http_response_header.pp > /dev/null 2>&1
ssh ubuntu@3.235.227.53 cat /etc/nginx/sites-enabled/default
ssh ubuntu@3.235.227.53 cat /var/www/html/index.nginx-debian.html

curl 3.235.227.53
curl 3.235.227.53/xyz
curl 3.235.227.53/redirect_me
curl -sI 3.235.227.53 | grep X-Served-By


./0-transfer_file 2-puppet_custom_http_response_header.pp 3.235.251.139 ubuntu ~/.ssh/school
ssh ubuntu@3.235.251.139 cat 2-puppet_custom_http_response_header.pp

ssh ubuntu@3.235.251.139 sudo puppet apply 2-puppet_custom_http_response_header.pp > /dev/null 2>&1
ssh ubuntu@3.235.251.139 cat /etc/nginx/sites-enabled/default
ssh ubuntu@3.235.251.139 cat /var/www/html/index.nginx-debian.html

curl 3.235.251.139
curl 3.235.251.139/xyz
curl 3.235.251.139/redirect_me
curl -sI 3.235.251.139 | grep X-Served-By

## Install puppet
sudo apt-get update
sudo apt-get install -y puppet
