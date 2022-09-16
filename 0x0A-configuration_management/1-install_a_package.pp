# Install flask version 2.1.0 from pip3 using Puppet

package { 'puppet-lint':
  ensure   => '2.5.0',
  provider => 'gem'
}
