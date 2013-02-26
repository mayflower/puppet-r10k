class r10k::params {
  # r10k.yaml.example
  $configfile = '/etc/r10k.yaml'
  $cachedir   = '/var/cache/r10k'
  $purgedirs  = [ '/etc/puppet/environments' ]
  $sources    = {
    'plops' => {
      'remote'  => 'git@github.com:my-org/org-shared-modules',
      'basedir' => '/etc/puppet/environments'
    }
  }

  # Debian specific. Fix meeeeeeeee
  case $lsbdistcodename {
    'squeeze': {
      $r10k_bin = '/var/lib/gems/1.8/bin/r10k'
    }
    'wheezy', 'precise': {
      $r10k_bin = '/usr/local/bin/r10k'
    }
  }
}
