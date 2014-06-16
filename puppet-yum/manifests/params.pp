class yum::params {
  case $operatingsystemrelease{
    6.4 : {
      $yum_base_descr = 'base'
      $yum_updates_descr = 'updates'
      $yum_extras_descr = 'extras'
      $yum_centosplus_descr = 'centosplus'
      $yum_contrib_descr = 'contrib'
      $yum_centos6_pki = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6'
      $yum_base_baseurl = 'http://mirrors.163.com/centos/$releasever/os/$basearch/'
      $yum_updates_baseurl = 'http://mirrors.163.com/centos/$releasever/updates/$basearch/'
      $yum_extras_baseurl = 'http://mirrors.163.com/centos/$releasever/extras/$basearch/'
      $yum_centosplus_baseurl = 'http://mirrors.163.com/centos/$releasever/centosplus/$basearch/'
      $yum_contrib_baseurl = 'http://mirrors.163.com/centos/$releasever/contrib/$basearch/'
      $yum_centos6_pki_name = '/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6'
      $yum_centos6_pki_download = 'puppet:///modules/yum/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6'
    }
  }
}
