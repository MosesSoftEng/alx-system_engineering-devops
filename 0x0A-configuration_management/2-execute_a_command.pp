# Kill a process named killmenow using Puppet manifest

exec { 'Terminate killmenow process':
  command => 'pkill killmenow',
  path    => '/usr/bin/:/bin/'
}
