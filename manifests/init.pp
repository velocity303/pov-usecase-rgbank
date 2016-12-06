class profile_rgbank (
  $user     = 'demo',
  $password = 'demo',
  $dbhost   = 'localhost',
  $dbname   = 'rgbank-db',
) {
  include profile_rgbank::nginx
  include profile_rgbank::mysql::client
  include profile_rgbank::mysql::server

  ensure_packages(['wget','git'])

  class { 'profile_rgbank::db':
    user     => $user,
    password => $password,
  }

  class { 'profile_rgbank::web':
    db_name     => $dbname,
    db_host     => $dbhost,
    db_user     => $user,
    db_password => $password,
  }

  Class['profile_rgbank::mysql::server'] -> Class['profile_rgbank::db']
  Class['profile_rgbank::db'] -> Class['profile_rgbank::web']
}
