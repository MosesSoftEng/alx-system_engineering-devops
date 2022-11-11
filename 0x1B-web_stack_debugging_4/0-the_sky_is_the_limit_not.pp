# Comment out ULIMIT directive line
file_line {'comment_out_UNLIMIT':
  path               => '/etc/default/nginx',
  line               => '# ULIMIT="-n 15"',
  match              => 'ULIMIT="-n 15"',
  append_on_no_match => false
}

# Restart Nginx
exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
