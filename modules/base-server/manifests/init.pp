class base-server {
	include sudoers
	include ntp
	include splunk
	file { '/usr/local/bin/papply':
		ensure => present,
		source => 'puppet:///modules/base-server/papply',
		owner => 'git',
		group => 'git',
		mode => '755',
		}
	file { '/etc/ssh/sshd_config':
                ensure => present,
                source => 'puppet:///modules/base-server/sshd_config',
                owner => 'root',
                group => 'root',
                mode => '600',
                }
	file { '/etc/sudo.conf':
                ensure => present,
                source => 'puppet:///modules/base-server/sudo.conf',
                owner => 'root',
                group => 'root',
                mode => '600',
                }
        file { '/usr/local/bin/pull-updates':
		ensure => present,
                source => 'puppet:///modules/base-server/pull-updates',
                owner => 'git',
                group => 'git',
                mode => '755',
		require => File['/usr/local/bin/papply'],

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
