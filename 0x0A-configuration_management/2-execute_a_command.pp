# Executing a command using Puppet.

exec { 'pkill':
  command => '/usr/bin/pkill killmenow',
}
