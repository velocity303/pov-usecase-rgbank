class profile_rgbank::web (
  $use_docker = false,
  $db_name,
  $db_host,
  $db_user,
  $db_password,
) {

  rgbank::web { "web-app":
    db_name     => "rgbank-${db_name}",
    db_host     => $db_host,
    db_user     => $db_user,
    db_password => $db_password,
    use_docker  => $use_docker,
    listen_port => '80',
  }
}
