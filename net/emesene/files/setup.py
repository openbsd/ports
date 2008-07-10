# $OpenBSD: setup.py,v 1.1.1.1 2008/07/10 13:22:41 wcmaier Exp $

from distutils.core import setup
import sys, os

setup(
        name = "emesene",
        version = "1.0",
        description = "client for the Windows Live Messenger chat network",
        author = "Roger Duran",
        author_email = "rogerduran@users.sourceforge.net",
        license = "GPLv2",
        url = "http://www.emesene.org/",
	packages = ('emesene', 'emesene.emesenelib',
	    'emesene.plugins_base',
	    'emesene.plugins_base.currentSong', 'emesene.abstract'),
	package_dir = {'': 'lib'},
        scripts = ('emesene',)
)
