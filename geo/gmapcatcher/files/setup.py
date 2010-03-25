# $OpenBSD: setup.py,v 1.1.1.1 2010/03/25 10:13:26 kevlo Exp $

from distutils.core import setup
import sys, os

setup(
        name = "gmapcatcher",
        version = "0.6.3.0",
        description = "offline maps viewer",
        license = "GPLv2",
        url = "http://code.google.com/p/gmapcatcher/",
        packages = ('gmapcatcher','gmapcatcher.mapServers',
	    'gmapcatcher.pyGPSD','gmapcatcher.pyGPSD.nmea',
	    'gmapcatcher.pyGPSD.nmea.serial'),
)
