# df_postgresql cookbook
this in theory will install a working version of postgresql onto a centos 6.4 machine.
I have not written it to support ubuntu. The community cookbook should work in theory for this work. 
# Requirements
Centos 64 bit architecture
Ubuntu 64 bit architecture
a working internet connection to download the 
# Usage
this is a basic setup for downloading postgres onto a machine. Configuration should be expected to be added to the role cookbooks at a later date
# Attributes

default["df_postgresql"]["source"]: this is a currently unused attribute as it is pulling everything from the internet at the moment.

# Recipes

* default: base point for determining which recipe to use based on rhel or debian arch
* debian: Installs postgres from apt-packages
* rhel: installs postgres from local rpm packages
# Author

Author:: Jeff Carapetyan (<jeff@datafundamentals.com>)
