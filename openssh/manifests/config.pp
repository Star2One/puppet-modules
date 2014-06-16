class openssh::config {
    file { "/etc/ssh/sshd_config":
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0600,
        source => "puppet:///modules/openssh/sshd_config",
        require => Class["openssh::install"],
        notify => Class["openssh::service"],
    }
}

