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

# Add permanent redirect
file_line { 'Add redirect line':
  ensure => 'present',
  path   => '/etc/nginx/sites-enabled/default',
  after  => 'server_name _;',
  line   => "\tlocation /redirect_me {\n\t\treturn 301 http://github.com/;\n\t}\n",
}

# Add custom error
file_line { 'Custom error':
  ensure => 'present',
  path   => '/etc/nginx/sites-enabled/default',
  after  => 'server_name _;',
  line   => "\terror_page 404 /custom_404.html;\n\tlocation /custom_404.html {\n\t\troot /var/www/html;\n\t\tinternal;\n\t}\n",
}

# Set index content
file { '/var/www/html/custom_404.html':
  content => "Ceci n'est pas une page",
}

# restart nginx
exec { 'restart nginx':
  command => 'service nginx restart',
  path    => '/usr/bin:/usr/sbin:/bin',
}

# allow HTTP
exec { 'allow HTTP':
  command => "ufw allow 'Nginx HTTP'",
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}

# Start nginx service
service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
