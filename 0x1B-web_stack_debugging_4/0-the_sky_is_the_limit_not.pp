# Set open file limit UNLIMIT to 4096

file_line {'set_UNLIMIT':
  path               => '/etc/default/nginx',
  line               => 'ULIMIT="-n 4096"',
  match              => 'ULIMIT="-n 15"',
  append_on_no_match => false
}

# Restart Nginx
exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
