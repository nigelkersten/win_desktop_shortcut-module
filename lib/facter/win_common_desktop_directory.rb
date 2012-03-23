require 'rubygems'
require 'win32/dir'

Facter.add(:win_common_desktop_directory) do
  confine :osfamily => :windows
  setcode do
    Dir::COMMON_DESKTOPDIRECTORY
  end
end
