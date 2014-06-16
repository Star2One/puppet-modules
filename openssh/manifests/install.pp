class openssh::install {
    package { $openssh::params::ssh_package_name :
        ensure => present,
        require => Class["yum"],
    }
}

