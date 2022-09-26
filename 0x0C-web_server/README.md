# 0x0C. Web server.

## 0. Transfer a file to your server
Write a Bash script that transfers a file from our client to a server.

```bash
touch 0-transfer_file
shellcheck 0-transfer_file
chmod +x 0-transfer_file
ssh ubuntu@3.235.227.53 -i ~/.ssh/school 'ls ~/'
touch some_page.html
./0-transfer_file some_page.html 3.235.227.53 ubuntu ~/.ssh/school
```

## 1. Install nginx web server
```bash
chmod +x 1-install_nginx_web_server
./0-transfer_file 1-install_nginx_web_server 3.235.227.53 ubuntu ~/.ssh/school
ssh ubuntu@3.235.227.53
./1-install_nginx_web_server > /dev/null 2>&1

curl 3.235.227.53
curl -sI 3.235.227.53
```

## 2. Setup a domain name
Provide the domain name.


## 3. Redirection
Configure your Nginx server so that /redirect_me is redirecting to another page.
```bash

ssh ubuntu@3.235.227.53
sudo vi /etc/nginx/sites-available/default
:set number

chmod +x 3-redirection
./0-transfer_file 3-redirection 3.235.227.53 ubuntu ~/.ssh/school
ssh ubuntu@3.235.227.53
./3-redirection > /dev/null 2>&1

curl -sI 3.235.227.53/redirect_me/
```

## 4. Not found page 404
Configure your Nginx server to have a custom 404 page that contains the string Ceci n'est pas une page.

```bash
# Connect to remote server
ssh ubuntu@3.235.227.53
sudo vi /etc/nginx/sites-available/default
sudo vi /etc/nginx/sites-enabled/default

# Create custom_404.html file
sudo touch var/www/html/custom_404.html

# Change file ownership to current user to allow editing
sudo chown -R "$USER":"$USER" /var/www/html/custom_404.html

# Overwite file content
echo "Ceci n'est pas une page" > /var/www/html/custom_404.html

# Check nginx file cfor errors
sudo nginx -t

# Check server status
service nginx status


# Add custom 404 error page to nfinx confg
sed -i "10s/.*/\t\terror_page 404 \/custom_404.html;\n\t\tlocation \/custom_404.html {\n\t\t\t\troot \/var\/www\/html;\n\t\t\t\tinternal;\n\t\t}/" /etc/nginx/sites-enabled/default

# Restart nginx server
sudo service nginx restart

chmod +x 4-not_found_page_404
./0-transfer_file 4-not_found_page_404 3.235.227.53 ubuntu ~/.ssh/school
./4-not_found_page_404 > /dev/null 2>&1

curl 3.235.227.53/xyz
curl -sI 3.235.227.53/xyz
```

## 5. Install Nginx web server (w/ Puppet)
Configure Linux server with Nginx using puppet

```bash
puppet-lint 7-puppet_install_nginx_web_server.pp
chmod +x 7-puppet_install_nginx_web_server.pp
sudo puppet apply 7-puppet_install_nginx_web_server.pp

curl localhost
curl localhost/redirect_me

./0-transfer_file 7-puppet_install_nginx_web_server.pp 3.235.227.53 ubuntu ~/.ssh/school


sudo apt-get update
sudo apt-get install -y puppet
sudo puppet module install puppetlabs-stdlib

sudo puppet apply 7-puppet_install_nginx_web_server.pp > /dev/null 2>&1

cat /etc/nginx/sites-enabled/default

curl 3.235.227.53
curl -sI 3.235.227.53/redirect_me/
```