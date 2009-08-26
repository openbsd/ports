# $OpenBSD: setup.py,v 1.1.1.1 2009/08/26 16:53:21 sthen Exp $

from distutils.core import setup
import sys, os

setup(
        name = "Luma",
        version = "2.4",
        description = "LDAP browser and utility",
        author = "Wido Depping",
        author_email = "widod@users.sourceforge.net",
        license = "GPL",
        url = "http://luma.sourceforge.net/",
        packages = ('luma',),
	package_dir = {'': 'lib'},
        scripts = ('lib/luma/luma',)
)
