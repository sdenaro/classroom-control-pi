class profile::redis (
  $master = false
) {
  # We'll require our epel class so that it is enforced first.
  # Don't forget to update that class before enforcing your code
  require profile::epel

  if $master {
    $slaveof = undef
  }
  else {
    $slaveof = 'master.puppetlabs.vm 6479'
  }

  class { 'redis':
    maxmemory => '10mb',
    bind      => $ipaddres,
    slaveof   => $slaveof,
  }
}
