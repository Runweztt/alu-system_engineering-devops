# Raises the Nginx open file limit and restarts the service.
exec { 'raise-nginx-open-file-limit':
  command => '/bin/sed -i \'s/ULIMIT="-n 15"/ULIMIT="-n 4096"/\' /etc/default/nginx',
  onlyif  => '/bin/grep -q \'ULIMIT="-n 15"\' /etc/default/nginx',
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure => running,
}
