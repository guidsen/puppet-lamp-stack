class tools {

  # package install list
  $packages = [
    "curl",
    "vim",
    "htop",
    "git",
    "composer"
  ]

  # install packages
  package { $packages:
    ensure => present,
    require => Exec["apt-get update"]
  }
}
