# Install and configure Nginx web server
class webserver {
  package { 'nginx':
    ensure => installed,
  }

  service { 'nginx':
    ensure => running,
    enable => true,
  }

  file { '/var/www/html/index.html':
    content => 'Hello World!',
  }

  file { '/etc/nginx/sites-available/default':
    content => template('webserver/nginx-config.erb'),
    notify  => Service['nginx'],
  }

  file { '/etc/nginx/sites-enabled/default':
    ensure => 'link',
    target => '/etc/nginx/sites-available/default',
  }

  file { '/var/www/html/404.html':
    content => 'Ceci n\'est pas une page',
  }
}

class redirect {
  exec { 'create-redirect':
    command => 'ln -sf /etc/nginx/sites-available/default /etc/nginx/sites-available/redirect',
    creates => '/etc/nginx/sites-available/redirect',
    notify  => Service['nginx'],
  }

  file { '/etc/nginx/sites-available/redirect':
    content => template('webserver/redirect-config.erb'),
    require => Exec['create-redirect'],
    notify  => Service['nginx'],
  }
}

include webserver
include redirect
