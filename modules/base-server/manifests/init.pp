class base-server {
	include sudoers
	include ntp
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
	package { 'php':
		ensure => installed,
	}
	package { 'htop':
		ensure => installed,
		source => 'http://pkgs.repoforge.org/htop/htop-0.8.3-1.el3.rf.x86_64.rpm',
		provider => 'rpm',
	}
}
