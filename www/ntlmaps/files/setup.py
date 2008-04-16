# $OpenBSD: setup.py,v 1.1.1.1 2008/04/16 17:34:47 wcmaier Exp $

from distutils.core import setup
import sys, os

setup(
        name = "NTLMaps",
        version = "0.9.9.0.1",
        description = "proxy for NTLM authentication",
        author = "Dmitry Rozmanov",
        author_email = "dima@xenon.spb.ru",
        license = "GPL",
        url = "http://ntlmaps.sourceforge.net/",
        packages = ('ntlmaps',),
	package_dir = {'': 'lib'},
        scripts = ('ntlmaps',)
)
