class users {
	 user { 'dave':
                ensure => present,
                comment => 'Dave Try',
                home => '/home/dave',
                managehome => true,
                }
	user { 'riley':
                ensure => present,
                comment => 'Riley Kelly',
                home => '/home/riley',
                managehome => true,
                }
	}	
	
