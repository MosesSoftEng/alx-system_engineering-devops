# Install nginx web server and configure using puppet

include stdlib

# Update apt
exec { 'Update apt library':
  command => 'sudo apt update',
  path    => '/usr/bin/'
}

# Install nginx
package { 'nginx':
  ensure   => 'installed',
}

# Add custom header to nginx
file_line { 'Custom header':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'add_header X-Served-By $hostname;',
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
  require => Package['nginx'],
}

# Restart nginx service
service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
