class profile_rgbank::nginx {
  if $::operatingsystem == "RedHat" {
    include profile_rgbank::remi
  }

  class { 'php':
    composer => false,
  }

  include nginx
  file { '/etc/nginx/conf.d/default.conf':
    ensure  => absent,
    require => Package['nginx'],
    notify  => Service['nginx'],
  }

  Class['php'] -> Class['nginx']

}
