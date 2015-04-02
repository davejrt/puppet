class splunk {

		package { 'splunkforwarder'
		provider => 'rpm',
		source => 'puppet:///modules/splunk/splunkforwarder-6.2.1-245427-linux-2.6-x86_64.rpm'
		ensure => installed,
		
		
		}
}

	
