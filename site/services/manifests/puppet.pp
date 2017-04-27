class services::puppet {
  # ensure the puppet service doesn't interfere with our testing
  # TODO: Add parameters to ensure that this service is not running
  service { 'puppet':
    ensure => stopped,
    enable => false,
  }
}
