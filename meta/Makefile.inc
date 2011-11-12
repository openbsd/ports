# $OpenBSD: Makefile.inc,v 1.1 2011/11/12 16:38:08 ajacoutot Exp $

CATEGORIES=	meta
DISTFILES=	# empty
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# by default don't do anything (can be overridden in each port Makefile)
do-install:
