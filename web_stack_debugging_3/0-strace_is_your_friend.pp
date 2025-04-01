exec { 'fix-apache-error':
  command => 'chown -R www-data:www-data /var/www/html && systemctl restart apache2',
  path    => ['/bin', '/usr/bin'],
}
