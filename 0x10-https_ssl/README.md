# 0x10. HTTPS SSL
Get domain answer only
dig lb-01.holberton.online +noall +answer

Get record type and ip using awk
dig lb-01.holberton.online +noall +answer| awk '{print $4 $5}'

Get record type and ip using cut
dig lb-01.holberton.online +noall +answer | cut -f2- -d' '
dig web-02.holberton.online +noall +answer | cut -f4,5 -d$'\t'
Issue get rid of extra


www.msofteng.tech
msofteng.tech


## 0. World wide web
Configure your domain zone so that the subdomain www points to your load-balancer IP (lb-01). Let’s also add other subdomains to make our life easier, and write a Bash script that will display information about subdomains.

chmod +x 0-world_wide_web
shellcheck 0-world_wide_web
./0-world_wide_web holberton.online www


## 1. HAproxy SSL termination
Create a certificate using certbot and configure HAproxy to accept encrypted traffic for your subdomain www

HAproxy server  3.237.4.231

chmod +x 1-haproxy_ssl_termination

https://www.msofteng.tech
msofteng.tech
https://msofteng.tech

Check haproxy version
haproxy -v

Check haproxy config file
sudo code /etc/haproxy/haproxy.cfg

Check haproxy status
sudo systemctl status haproxy.service -l --no-pager

Start HAproxy
Start haproxy server start

Reload HAproxy
sudo service haproxy reload

Check logs
systemctl status haproxy.service
