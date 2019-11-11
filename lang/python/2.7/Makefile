# $OpenBSD: Makefile,v 1.65 2019/11/11 17:47:42 ajacoutot Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		2.7
PATCHLEVEL =		.17
REVISION =		0
SHARED_LIBS =		python2.7 0.0
VERSION_SPEC =		>=2.7,<2.8

REVISION-main =		1
REVISION-tests =	0
REVISION-tools =	0
REVISION-gdbm =		1
REVISION-idle =		0
REVISION-tkinter =	1
REVISION-bsddb =	1

CONFIGURE_ARGS += --with-ensurepip=no
CONFIGURE_ENV += ac_cv_opt_olimit_ok=no

PORTROACH =             limit:^2\.7

.include <bsd.port.mk>
