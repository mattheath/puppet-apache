# A Boxen-focused project setup helper
#
# Options:
#
#     dir =>
#       The directory to clone the project to.
#       Defaults to "${boxen::config::srcdir}/${name}".
#
#     dotenv =>




define apache::vhost() {
  require apache

  $docroot = "${boxen::config::srcdir}/${name}/web"
  $hostname = "${name}.dev"
  $port = 4053

  file { "${apache::config::sitesdir}/${name}.conf":
    content => template('apache/config/apache/vhost.conf.erb'),
    require => File[$apache::config::sitesdir],
    #notify  => Service['org.apache.httpd'],
  }



}