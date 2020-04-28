################################################################################
# Class: wget
#
# This class will install wget - a tool used to download content from the web.
#
################################################################################
class wget (
  $version = present,
  $manage_package = true,
) {

  if $manage_package {
    if !defined(Package['wget']) {
      if $facts['kernel'] == 'Linux' {
        package { 'wget': ensure => $version }
      }
      elsif $facts['kernel'] == 'FreeBSD' {
        if versioncmp($facts['os']['release']['major'], '10') >= 0 {
          package { 'wget': ensure => $version }
        }
        else {
          package { 'wget':
            ensure => $version,
            name   => 'ftp/wget',
            alias  => 'wget';
          }
        }
      }
    }
  }
}
