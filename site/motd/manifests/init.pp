class motd {
  exec { "figlet 'Welcome to ${::fqdn}!' > /etc/motd":
    path    => '/bin:/usr/bin:/usr/local/bin',
    creates => '/etc/motd',
    # what relationship should we add here to ensure that figlet is available to run?
    require => Package['figlet'],
  }

  package { 'figlet':
    ensure => present,
  }
}
