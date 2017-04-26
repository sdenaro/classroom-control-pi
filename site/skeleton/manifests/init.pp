class skeleton { 
    file { '/etc/skel': 
    ensure => 'directory',   
    owner  => 'root', 
    group  => 'root', 
    mode   => '0755', 
 } 
# add a resource to manage /etc/skel/.bashrc 
   file {'/etc/skel/.bashrc':
   ensure => 'file',       
   owner  => 'root',       
   group  => 'root',       
   mode   => '0755', 
   source => 'puppet:///modules/skeleton/bashrc',    
} 
  } 
