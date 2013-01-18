win_desktop_shortcut
====================

Overview
--------
The win_desktop_shortcut module places a shortcut to puppetlabs.com on the desktop of all users on a Windows machine.       

Module Description
-------------------
The win_desktop_shortcut module demonstrates the ability to manage Windows user settings with Puppet. Additionally, the module provides Facter with an additional fact, `$win_common_desktop_directory`.

Setup
-----

**What win_desktop_shortcut affects:**

* Windows user desktop
* Adds a Windows-specific Facter fact
	
### Beginning with win_desktop_shortcut	
To begin using win_desktop_shortcut, you must download the module to your puppet master. This module is intended for installation on a *nix master for use with a Windows agent.  

Usage
------

Once the module is installed on your puppet master, you have two options for running it: 

1. [Puppet Enterprise Console](#puppet-enterprise-console)
2. [Command Line ](#command-line)

### Puppet Enterprise Console

Using the [Puppet Enterprise Console](http://docs.puppetlabs.com/pe/2.5/console_classes_groups.html#classes), assign the win_desktop_shortcut class to a Windows node or node group.

### Command Line

Include the class in your site.pp manifest

    node "certname" {
      # This is where you can declare classes for all nodes.
      # Example:
      #   class { 'my_class': }
      include win_desktop_shortcut
    }

Whichever option you choose, once your puppet agent runs, the shortcut should appear on the Windows desktop. To trigger a one-time run in Windows

    C:\>puppet agent --onetime

Development
------------

Puppet Labs modules on the Puppet Forge are open projects, and community contributions are essential for keeping them great. We can’t access the huge number of platforms and myriad of hardware, software, and deployment configurations that Puppet is intended to serve.

We want to keep it as easy as possible to contribute changes so that our modules work in your environment. There are a few guidelines that we need contributors to follow so that we can have a chance of keeping on top of things.

You can read the complete module contribution guide [on the Puppet Labs wiki.](http://projects.puppetlabs.com/projects/module-site/wiki/Module_contributing)

