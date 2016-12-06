class profile_rgbank::remi {
  package { 'remi-release':
    source   => 'http://rpms.famillecollet.com/enterprise/remi-release-7.rpm',
    provider => 'rpm',
    ensure   => installed,
  }

  yumrepo { 'remi':
    enabled => 1,
    require => Package['remi-release'],
  }

}
