# $OpenBSD: Makefile,v 1.12 2016/07/03 18:16:00 rpointel Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		3.4
PATCHLEVEL =		.5
SHARED_LIBS =		python3.4m 1.0
VERSION_SPEC =		>=3.4,<3.5

CONFIGURE_ARGS +=	--with-ensurepip=no

PORTROACH =             limit:^3\.4

.include <bsd.port.mk>
