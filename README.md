# df_postgresql cookbook
this in theory will install a working version of postgresql onto a centos 6.4 machine.
I have not written it to support ubuntu. The community cookbook should work in theory for this work. 
# Requirements
Centos 64 bit architecture
a working internet connection to download the 
# Usage

# Attributes

default["df_postgresql"]["source"]: this is a currently unused attribute as it is pulling everything from the internet at the moment.

# Recipes

* default: installs postgre from the local rpm package

# Author

Author:: Jeff Carapetyan (<jeff@datafundamentals.com>)
