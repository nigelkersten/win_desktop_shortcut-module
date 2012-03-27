class win_desktop_shortcut {

  if $osfamily == "windows" {
    if $win_common_desktop_directory {

      file { "${win_common_desktop_directory}\\PuppetLabs.URL":
        ensure  => present,
        content => "[InternetShortcut]\nURL=http://puppetlabs.com",
      }

    }
  }

}
