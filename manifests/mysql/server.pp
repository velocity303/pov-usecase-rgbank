class profile_rgbank::mysql::server {
  include profile_rgbank::mysql::client

  class { 'mysql::server':
    override_options   => {
      'mysqld' => {
        'bind-address' => '0.0.0.0',
      }
    },
  }
}
