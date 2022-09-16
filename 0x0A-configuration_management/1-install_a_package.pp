# Install flask version 2.1.0 from pip3 using Puppet

package { 'Install flask':
  ensure   => '2.1.0',
  name     => 'flask',
  provider => 'pip3'
}
