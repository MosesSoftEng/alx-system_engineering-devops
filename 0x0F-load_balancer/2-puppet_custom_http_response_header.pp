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

# Set index content
file { '/var/www/html/index.nginx-debian.html':
  content => 'Hello World!',
}

# Add custom header to nginx
file_line { 'Custom header':
  ensure => 'present',
  path   => '/etc/nginx/sites-enabled/default',
  after  => 'listen \[::\]:80 default_server;',
  line   => "\tadd_header X-Served-By ${hostname};",
}

# Restart nginx service
service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
