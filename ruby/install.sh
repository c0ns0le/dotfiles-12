#! /bin/bash

# Zach Leslie <xaque208@gmail.com>
# 2012-12-23 17:45:46

# The following script will setup rbenv on a new system.

default_ver="2.4.0"
rbenv_url="git://github.com/sstephenson/rbenv.git"
rbenv_build_url="git://github.com/sstephenson/ruby-build.git"

# Clone the rbenv source
git clone $rbenv_url ~/.rbenv

# Create prepare the build plugin
mkdir -p ~/.rbenv/plugins
git clone $rbenv_build_url ~/.rbenv/plugins/ruby-build

# install the default version
~/.rbenv/bin/rbenv install $default_ver
~/.rbenv/bin/rbenv global $default_ver

