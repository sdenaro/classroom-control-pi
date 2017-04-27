class motd {
  exec { "figlet 'Welcome to ${::fqdn}!' > /etc/motd":
    path    => '/bin:/usr/bin:/usr/local/bin',
    creates => '/etc/motd',
    require => Package['figlet'],    
  }

  package { 'figlet':
    ensure => present,
  }
}
