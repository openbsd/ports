# $OpenBSD: Makefile,v 1.73 2022/01/23 21:32:07 daniel Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

FULL_VERSION =		2.7.18
SHARED_LIBS =		python2.7 0.0
VERSION_SPEC =		>=2.7,<2.8

REVISION-main =		5
REVISION-idle =		1
REVISION-tests =	1
REVISION-bsddb =	0
REVISION-gdbm =		0
REVISION-tkinter =	0
REVISION-tools =	0

CONFIGURE_ARGS += --with-ensurepip=no
CONFIGURE_ENV += ac_cv_opt_olimit_ok=no

PORTROACH =             limit:^2\.7

.include <bsd.port.mk>
