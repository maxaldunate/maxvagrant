Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }


file { '/tmp/hello-file':
    ensure  => 'present',
    content => "From Puppet\n",
    mode    => '0644',
}

file { "/etc/environment":
        ensure => 'file',
        source => 'puppet:///etc.environment.txt',
}
