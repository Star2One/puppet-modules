class openssh::params {
    case $operatingsystem {
        /(Ubuntu|Debian)/: {
            $ssh_package_name = 'openssh-server'
            $ssh_service_name = 'ssh'
        }
        /(RedHat|CentOS|Fedora)/: {
            $ssh_package_name = 'openssh-server'
            $ssh_service_name = 'sshd'
        }
    }

}
