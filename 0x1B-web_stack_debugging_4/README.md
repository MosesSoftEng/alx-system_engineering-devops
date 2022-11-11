# :book: 0x1B. Web stack debugging #4


## Project setup
```bash
mkdir 0x1B-web_stack_debugging_4
touch 0x1B-web_stack_debugging_4/README.md
```

# :computer: Tasks
## [0. Sky is the limit, let's bring that limit higher](0-the_sky_is_the_limit_not.pp)
```bash
touch 0-the_sky_is_the_limit_not.pp

# Is nginx running
sudo service nginx status

# Nginx port
netstat -ltnp | grep "nginx"

# Confirm port in config
cat /etc/nginx/sites-enabled/default

# Check nginx configurations
cat /etc/nginx/sites-enabled/default

# Possible issue in listen directive set to accept IPv6 request only
#   listen [::]:80 default_server ipv6only=on;
# Fix by removing ipv6only directive

# Check nginx config is ok
sudo nginx -t

# Restart nginx server
sudo service nginx restart

# Rerun apache test
ab -c 100 -n 2000 localhost/

touch 0-the_sky_is_the_limit_not.pp
chmod +x 0-the_sky_is_the_limit_not.pp
puppet-lint 0-the_sky_is_the_limit_not.pp
puppet apply 0-the_sky_is_the_limit_not.pp

puppet apply 0-the_sky_is_the_limit_not.pp --modulepath /etc/puppet/code/modules


# Install compatible stdlib module.
sudo puppet module install puppetlabs-stdlib --version 5.0.0

sudo vi 0-the_sky_is_the_limit_not.pp
puppet apply 0-the_sky_is_the_limit_not.pp


# View nginx config files
cat /etc/default/nginx
cat /etc/nginx/sites-enabled/default | head -30
cat /etc/nginx/sites-available/default | head -30

ls -l /etc/nginx/sites-available/default

# Recreat symbloic link
ln -s -f /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
```

# :books: References
1. []()


# :man: Author and Credits.
This project was done by [SE. Moses Mwangi](https://github.com/MosesSoftEng). Feel free to get intouch with me;

:iphone: WhatsApp [+254115227963](https://wa.me/254115227963)

:email: Email [moses.soft.eng@gmail.com](mailto:moses.soft.eng@gmail.com)

:thumbsup: A lot of thanks to [ALX-Africa Software Engineering](https://www.alxafrica.com/) program for the project requirements.