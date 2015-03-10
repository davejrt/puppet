class base-server {
	
	file { '/usr/local/bin/papply':
		source => 'puppet:///modules/base-server/papply',
		owner => 'git',
		group => 'git',
		mode => '755',
		}
}
