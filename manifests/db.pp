class profile_rgbank::db (
  $user,
  $password,
  $dbname = 'rgbank-db',
) {
  rgbank::db { $dbname:
    user     => $user,
    password => $password,
  }
}
