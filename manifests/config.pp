class apache::config {
  require boxen::config

  $configdir  = "/etc/apache2"
  $configfile = "${configdir}/httpd.conf"
  $sitesdir   = "${configdir}/sites"

  $executable = "/usr/sbin/httpd"
  $logdir     = "/var/log/apache2"
  $logerror   = "${logdir}/error.log"
}
