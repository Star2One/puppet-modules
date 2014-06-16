class bash::config {
    file { "/etc/skel/.bashrc":
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => '0644',
        source => "puppet:///modules/bash/etc/skel/.bashrc",
        backup => 'main',
    }


    file { "/root/.vimrc":
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => '0644',
        source => 'puppet:///modules/bash/root/.vimrc',
        backup => 'main',
    }




}
