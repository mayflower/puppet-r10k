class r10k(
  $ensure     = 'present',
  $configfile = 'undef'
) {
  include r10k::params

  package { 'r10k':
    ensure   => $ensure,
    provider => gem,
  }

  if $configfile != 'undef' {
    file { '/etc/r10k.yaml':
      ensure => present,
      owner  => root,
      group  => 0,
      source => $configfile,
    }
  }
}
