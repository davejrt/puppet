class splunkforwarder {

		package { 'splunkforwarder':
			provider => 'rpm',
			source => '/tmp/splunkforwarder-6.2.1-245427-linux-2.6-x86_64.rpm',
			install_options => '-ivh',
			ensure => installed,
			require => File["/tmp/splunkforwarder-6.2.1-245427-linux-2.6-x86_64.rpm"],
		
		
		}

	    file {'/tmp/splunkforwarder-6.2.1-245427-linux-2.6-x86_64.rpm':
			source => 'puppet:///modules/splunkforwarder/splunkforwarder-6.2.1-245427-linux-2.6-x86_64.rpm',
			ensure => present,
		}
		
              exec {'/opt/splunkforwarder/bin/scripts/tribsta-config.sh':
			source => 'puppet:///modules/splunkforwarder/tribsta-configure.sh',
			ensure => present,
}

}

	
