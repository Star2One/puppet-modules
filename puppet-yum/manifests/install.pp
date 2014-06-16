class yum::install{
  package { 'yum':
    ensure => installed,
  }
}
