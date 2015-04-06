class splunk {

		package { 'splunkforwarder':
			provider => 'rpm',
			source => '/tmp/splunkforwarder-6.2.1-245427-linux-2.6-x86_64.rpm',
			install_options => '-ivh',
			ensure => installed,
			require => File["/tmp/splunkforwarder-6.2.1-245427-linux-2.6-x86_64.rpm"],
		
		
		}

	    file {'/tmp/splunkforwarder-6.2.1-245427-linux-2.6-x86_64.rpm':
			source => 'puppet:///modules/splunk/splunkforwarder-6.2.1-245427-linux-2.6-x86_64.rpm',
			ensure => present,
		}
		
	    file {'/opt/splunkforwarder/etc/apps/search/local/inputs.conf':
			source => 'puppet:///modules/splunk/inputs.conf',
			ensure => present,
			owner => 'splunk',
			group => 'splunk',
			mode => '0600',
		}

	    file {'/opt/splunkforwarder/etc/apps/search/metadata/local.meta':
            source => 'puppet:///modules/splunk/local.meta',
            ensure => present,
            owner => 'splunk',
	        group => 'splunk',
            mode => '0600',
		}


}

	
