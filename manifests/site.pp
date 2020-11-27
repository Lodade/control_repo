node default {
  file {'/root/README':
    ensure => file,
    content => "This is a README",
  }
  file {'/root/testing.txt':
    ensure => present,
    content => "I appeared :)",
  }
}
