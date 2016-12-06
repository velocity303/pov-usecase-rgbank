class profile_rgbank::mysql::client {
  class { 'mysql::client': }
  class { 'mysql::bindings::php': }
}
