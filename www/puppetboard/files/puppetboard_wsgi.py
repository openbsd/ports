# $OpenBSD: puppetboard_wsgi.py,v 1.1 2014/01/22 09:21:17 jasper Exp $
#
# WSGI helper script; distributed with Puppetboard up to 0.0.4

from __future__ import absolute_import

import os
import sys

me = os.path.dirname(os.path.abspath(__file__))
# Add us to the PYTHONPATH/sys.path if we're not on it
if not me in sys.path:
    sys.path.insert(0, me)

from puppetboard.app import app as application
