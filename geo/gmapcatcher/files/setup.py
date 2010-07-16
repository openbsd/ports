# $OpenBSD: setup.py,v 1.2 2010/07/16 10:14:01 kevlo Exp $

from distutils.core import setup
import sys, os

setup(
        name = "gmapcatcher",
        version = "0.7.1.0",
        description = "offline maps viewer",
        license = "GPLv2",
        url = "http://code.google.com/p/gmapcatcher/",
        packages = ('gmapcatcher','gmapcatcher.src.mapServers',
	    'gmapcatcher.src.pyGPSD','gmapcatcher.src.pyGPSD.nmea',
	    'gmapcatcher.src.pyGPSD.nmea.serial'),
	package_dir = {'': 'lib'},
	package_data  = {'gmapcatcher': ['images/*']},
)
