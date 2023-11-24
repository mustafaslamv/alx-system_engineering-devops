# Executing a command using Puppet.

exec { 'pkill':
  command => 'pkill killmenow',
}
