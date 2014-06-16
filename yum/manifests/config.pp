class yum::config{
  include yum::params 
  include yum::config_file,yum::config_key,yum::config_repo
}
class yum::config_file{
  file { '/etc/yum.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    backup  => main,
    source  => 'puppet:///modules/yum/etc/yum.conf',
    require => Class['yum::install'],
  }
  file { '/etc/yum.repos.d/CentOS-Base.repo':
     ensure  => present,
     owner   => 'root',
     group   => 'root',
     mode    => '0644',
     backup  => main,
     require => Class['yum::config_repo'],
  }
}
class yum::config_key{
  file { $yum::params::yum_centos6_pki_name:
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    backup => main,
    source => $yum::params::yum_centos6_pki_download,
  }
}
class yum::config_repo{
  yumrepo { base:
    descr     => $yum::params::yum_base_descr,
    baseurl   => $yum::params::yum_base_baseurl,
    enabled   => 1,
    gpgcheck  => 0,
    gpgkey    => $yum::params::yum_centos6_pki,
    require   => Class['yum::config_key'],
    priority  => 1,
  }
  yumrepo { updates:
    descr     => $yum::params::yum_updates_descr,
    baseurl   => $yum::params::yum_updates_baseurl,
    enabled   => 1,
    gpgcheck  => 0,
    priority  => 2,
  }
  yumrepo { extras:
    descr     => $yum::params::yum_extras_descr,
    baseurl   => $yum::params::yum_extras_baseurl,
    enabled   => 1,
    gpgcheck  => 0,
    priority  => 3,
  }
  yumrepo { centosplus:
    descr     => $yum::params::yum_centosplus_descr,
    baseurl   => $yum::params::yum_centosplus_baseurl,
    enabled   => 1,
    gpgcheck  => 0,
    priority  => 4,
  }
  yumrepo { contrib:
    descr     => $yum::params::yum_contrib_descr,
    baseurl   => $yum::params::yum_contrib_baseurl,
    enabled   => 1,
    gpgcheck  => 0,
    priority  => 4,
  }
}
