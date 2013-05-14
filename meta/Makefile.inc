# $OpenBSD: Makefile.inc,v 1.2 2013/05/14 08:10:15 jasper Exp $

CATEGORIES=	meta
DISTFILES=	# empty
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# by default don't do anything (can be overridden in each port Makefile)
do-install:
