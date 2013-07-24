class apache::config {

  include boxen::config

  $configdir  = "/etc/apache2"
  $configfile = "${configdir}/httpd.conf"
  $sitesdir   = "${configdir}/sites"

  $executable = "/usr/sbin/httpd"

  $logdir     = "${boxen::config::logdir}/apache"
  $logerror   = "${logdir}/error.log"

  # Nginx Proxy log files
  $proxyaccesslogfile = "${logdir}/nginx-access.log"
  $proxyerrorlogfile  = "${logdir}/nginx-error.log"

  # Our port! As nginx takes 80, lets bump by 10000
  $port = '10080'

}
