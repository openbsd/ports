# $OpenBSD: setup.py,v 1.1.1.1 2006/11/11 04:28:17 alek Exp $

from distutils.core import setup
import sys, os

setup(
        name = "Console Jabber Client",
        version = "1.0.0",
        description = "Jabber/XMPP client for text terminals",
        author = "Jacek Konieczny",
        author_email = "jajcus@bnet.pl",
        license = "GPL",
        url = "http://jabberstudio.org/projects/cjc",
        packages = ('cjc', 'cjc.ui'),
)
