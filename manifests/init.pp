################################################################################
# Class: wget
#
# This class will install wget - a tool used to download content from the web.
#
################################################################################
class wget($version='installed') {
  
  if $::operatingsystem != 'Darwin' {
    package { "wget": ensure => $version }
  }
}

################################################################################
# Definition: wget::fetch
#
# This class will download files from the internet.  You may define a web proxy
# using $http_proxy if necessary.
#
# If md5 $sourceHash is specified the downloaded file will be verified
# against the hash with md5sum after download. Specify $retries to >1
# to indicate the number of download retries.
#
################################################################################
define wget::fetch($source,$sourceHash=undef,$retries=1,$destination,$timeout="0",$verbose=false,$redownload=false,$nocheckcertificate=false) {
  include wget
  # using "unless" with test instead of "creates" to re-attempt download
  # on empty files.
  # wget creates an empty file when a download fails, and then it wouldn't try
  # again to download the file
  if $::http_proxy {
    $environment = [ "HTTP_PROXY=$::http_proxy", "http_proxy=$::http_proxy" ]
  }
  else {
    $environment = []
  }

  $verbose_option = $verbose ? {
    true  => "--verbose",
    false => "--no-verbose"
  }

  case $sourceHash {
    "", undef: { 
      $command = "wget $verbose_option$nocheckcert_option --output-document='$destination' '$source'"
    }
    default: { 
      $command = "wget $verbose_option$nocheckcert_option --output-document='$destination' '$source' && echo '${sourceHash}  ${destination}' | md5sum -c --quiet"
    }
  }

  $unless_test = $redownload ? {
    true => "test",
    false => "test -s '$destination'"
  }
  
  $nocheckcert_option = $nocheckcertificate ? {
    true => ' --no-check-certificate',
    false => ''
  }
  
  exec { "wget-$name":
    command => "$command",
    timeout => $timeout,
    unless => $unless_test,
    environment => $environment,
    path => "/usr/bin:/usr/sbin:/bin:/usr/local/bin:/opt/local/bin",
    require => Class[wget],
    tries => $retries,
  }
}

################################################################################
# Definition: wget::authfetch
#
# This class will download files from the internet.  You may define a web proxy
# using $http_proxy if necessary. Username must be provided. And the user's
# password must be stored in the password variable within the .wgetrc file.
#
################################################################################
define wget::authfetch($source,$destination,$user,$password="",$timeout="0",$verbose=false,$redownload=false,$nocheckcertificate=false) {
  include wget
  if $http_proxy {
    $environment = [ "HTTP_PROXY=$http_proxy", "http_proxy=$http_proxy", "WGETRC=/tmp/wgetrc-$name" ]
  }
  else {
    $environment = [ "WGETRC=/tmp/wgetrc-$name" ]
  }

  $verbose_option = $verbose ? {
    true  => "--verbose",
    false => "--no-verbose"
  }

  $unless_test = $redownload ? {
    true => "test",
    false => "test -s $destination"
  }
  
  $nocheckcert_option = $nocheckcertificate ? {
    true => ' --no-check-certificate',
    false => ''
  }
  
  case $::operatingsystem {
    'Darwin': {
      # This is to work around an issue with macports wget and out of date CA cert bundle.  This requires 
      # installing the curl-ca-bundle package like so:
      #
      # sudo port install curl-ca-bundle      
      $wgetrc_content = "password=$password\nCA_CERTIFICATE=/opt/local/share/curl/curl-ca-bundle.crt\n"
     } 
     default: {
      $wgetrc_content = "password=$password"
    }
  }
  
  file { "/tmp/wgetrc-$name":
    owner => root,
    mode => 600,
    content => $wgetrc_content,
  } ->
  exec { "wget-$name":
    command => "wget $verbose_option$nocheckcert_option --user=$user --output-document=$destination $source",
    timeout => $timeout,
    unless => $unless_test,
    environment => $environment,
    path => "/usr/bin:/usr/sbin:/bin:/usr/local/bin:/opt/local/bin",
    require => Class[wget],
  }
}


################################################################################
# Definition: wget::fetchifhashchanged
#
# This class will download files from the internet if the existing file under
# $destination is not matching given md5 $sourceHash.  
#
# It will check the downloaded file against the given md5 $sourceHash and
# retry once if the hash doesn't validate.
#
# You may define a web proxy using $http_proxy if necessary.
#
################################################################################
define wget::fetchifhashchanged(
$source,
$sourceHash,
$destination,
$timeout="0",
$verbose=false,
) {

  exec { "rm $destination ; echo ignoredresult":
    path => "/usr/bin:/usr/sbin:/bin:/usr/local/bin:/opt/local/bin",
    unless => "echo '${sourceHash}  ${destination}' | md5sum -c --quiet",
    notify => Wget::Fetch[$name],
  }

  wget::fetch { "$destination":
    source => $source,
    sourceHash => $sourceHash,
    destination => $destination,
    timeout => $timeout,
    verbose => $verbose,
    retries => 2,
  }
}

