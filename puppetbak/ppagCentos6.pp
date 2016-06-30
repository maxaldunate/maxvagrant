file { "/etc/environment":
		ensure => 'file',
		source => 'puppet:///files/etc.environment.txt',
}

