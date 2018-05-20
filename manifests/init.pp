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
      if $::kernel == 'Linux' {
        package { 'wget': ensure => $version }
      }
      elsif $::kernel == 'FreeBSD' {
        if versioncmp($::operatingsystemmajrelease, '10') >= 0 {
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
