# This Puppet script fixes the issue causing Apache to return a 500 error after debugging with strace.
exec { 'fix-apache-error':
  command => 'chown -R www-data:www-data /var/www/html && systemctl restart apache2',
  path    => ['/bin', '/usr/bin'],
}
