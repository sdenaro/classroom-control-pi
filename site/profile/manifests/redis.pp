class profile::redis {
  # We'll require our epel class so that it is enforced first.
  # Don't forget to update that class before enforcing your code
  require profile::epel
  
  class { 'redis':
    maxmemory => '10mb',
  }
  
}
