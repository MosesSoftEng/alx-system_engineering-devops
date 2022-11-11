# :book: 0x1B. Web stack debugging #4
This project covers web stack debugging and fixing automation using puppet configuration tool.

## Project setup
```bash
mkdir 0x1B-web_stack_debugging_4
touch 0x1B-web_stack_debugging_4/README.md
```

# :computer: Tasks
## [0. Sky is the limit, let's bring that limit higher](0-the_sky_is_the_limit_not.pp)
Fix failed request in nginx.

```bash
touch 0-the_sky_is_the_limit_not.pp

# Run fail condition.
ab -c 100 -n 2000 localhost/

# Check nginx error logs.
cat /var/log/nginx/error.log | tail -10

# Check nginx user default configurations.
cat /etc/default/nginx

# 

# A fix limit has been set removing
touch 0-the_sky_is_the_limit_not.pp
sudo vi 0-the_sky_is_the_limit_not.pp

chmod +x 0-the_sky_is_the_limit_not.pp
puppet-lint 0-the_sky_is_the_limit_not.pp

# Install compatible stdlib module.
sudo puppet module install puppetlabs-stdlib --version 5.0.0

puppet apply 0-the_sky_is_the_limit_not.pp
puppet apply 0-the_sky_is_the_limit_not.pp --modulepath /etc/puppet/code/modules

# View nginx config files
cat /etc/default/nginx
cat /etc/nginx/sites-enabled/default | head -30
cat /etc/nginx/sites-available/default | head -30

# Check symbolic link
ls -l /etc/nginx/sites-available/default

# Recreat symbloic link
ln -s -f /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
```

## [0. Sky is the limit, let's bring that limit higher](0-the_sky_is_the_limit_not.pp)

# :books: References
1. [forge stdlib](https://forge.puppet.com/modules/puppetlabs/stdlib/5.0.0)
1. [Nginx Failure Under High Volume Requests: A Post Mortem](https://medium.com/@tyastropheus/nginx-failure-under-high-volume-requests-a-post-mortem-draft-770bfe255f05#:~:text=The%20%2Fetc%2Fdefault%20in%20Linux,Linux%20system%20and%20Nginx%20configurations.)

## [1. User limit](1-user_limit.pp)
Fix user limits

```bash
touch 1-user_limit.pp
puppet-lint 1-user_limit.pp
```


# :man: Author and Credits.
This project was done by [SE. Moses Mwangi](https://github.com/MosesSoftEng). Feel free to get intouch with me;

:iphone: WhatsApp [+254115227963](https://wa.me/254115227963)

:email: Email [moses.soft.eng@gmail.com](mailto:moses.soft.eng@gmail.com)

:thumbsup: A lot of thanks to [ALX-Africa Software Engineering](https://www.alxafrica.com/) program for the project requirements.