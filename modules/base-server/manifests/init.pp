class base-server {
	
	file { '/usr/local/bin/papply':
		source => 'puppet:///modules/base-server/papply',
		owner => 'git',
		group => 'git',
		mode => '755',
		}

        file { '/usr/local/bin/pull-updates':
                source => 'puppet:///modules/base-server/pull-updates',
                owner => 'git',
                group => 'git',
                mode => '755',
                }

	cron { 'Automate git pull operation':
                user => 'git',
                command => '/usr/local/bin/pull-updates',
                minute => '*/1',
                }
}
