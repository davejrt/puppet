class users {
	 user { 'dave':
                ensure => present,
                comment => 'Dave Try',
                home => '/home/dave',
                managehome => true,
                }
	}	
	
