class apache::config {

  include boxen::config

  $configdir  = "/etc/apache2"
  $configfile = "${configdir}/httpd.conf"
  $sitesdir   = "${configdir}/sites"

  $executable = "/usr/sbin/httpd"

  $logdir     = "${boxen::config::logdir}/apache"
  $logerror   = "${logdir}/error.log"

}
