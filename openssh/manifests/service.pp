class openssh::service {
    service { $openssh::params::ssh_service_name :
        ensure => running,
        hasstatus => true,
        hasrestart => true,
        enable => true,
        require => Class["openssh::config"],
    }
}

