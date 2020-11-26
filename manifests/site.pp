node default {
  file {'/root/README':
    ensure => file,
  }
  file {'/root/testing.txt':
    ensure => present,
    content => "I appeared :)",
  }
}
