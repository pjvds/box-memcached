class { "memcached":
  listen => "0.0.0.0",
  maxmem => 1024,
}

exec { "apt-get update":
  path => "/usr/bin",
}

package { ['memcached'] :
    ensure  => 'installed',
    require => Exec['apt-get update'],
}
