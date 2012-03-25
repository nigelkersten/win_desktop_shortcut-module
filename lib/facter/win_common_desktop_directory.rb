Facter.add(:win_common_desktop_directory) do
  confine :osfamily => :windows
  setcode do
    require 'rubygems'
    require 'win32/dir'
    Dir::COMMON_DESKTOPDIRECTORY
  end
end
