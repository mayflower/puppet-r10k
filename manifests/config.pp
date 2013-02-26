class r10k::config (
  $ensure     = 'present',
  $path       = $r10k::params::configfile,
  $cachedir   = $r10k::params::cachedir,
  $sources    = $r10k::params::sources,
  $purgedirs  = $r10k::params::purgedirs,
) {
  include r10k::params

  file { 'r10k':
    ensure  => $ensure,
    path    => $path,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => template('r10k/r10k.yaml.erb')
  }
}