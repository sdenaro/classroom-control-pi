class profile::tuning::windows {
    registry::value { 'KeepAliveInterval':
      key    => 'HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters',
      value  => 'KeepAliveInterval',
      data   => '1',
    }

  # Add more registry resources as directed
  registry::value {'TcpMaxDataRetransmissions'
   key    => 'HKLM\SYSTEM\CurrentControlSet\Services\TCPIP\Parameters',     
   value  => 'TcpMaxDataRetransmissions',      
   data   => '5',
     
    }
    
     registry::value {'TcpTimedWaitDelay' 
     key    => 'HKLM\SYSTEM\CurrentControlSet\Services\TCPIP\Parameters', 
     value  => 'TcpTimedWaitDelay',    
     data   => '0x0000001e',    
     }
    
}
