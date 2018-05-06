#!/bin/sh

# basic dependency
pkg install -y rsync

# Dependencies for building handbook
pkg install -y docproj subversion

# For running simple http server
pkg install -y python3

# Clone source code for using Makefile to build handbook
svn checkout https://svn.FreeBSD.org/doc/head /home/vagrant/doc

# Change permissions for vagrant normal user
chown -R vagrant /home/vagrant/doc
