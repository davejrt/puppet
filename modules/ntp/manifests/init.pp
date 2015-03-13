class ntp {
	
	service { 'ntpd':
		ensure => 'running',
		enable => 'true',
		}
	
	file { '/etc/ntp.conf':
		ensure => 'present',
		source => 'puppet:///modules/ntp/ntp.conf',
		owner => 'root',
		group => 'root',
		}
	}  
