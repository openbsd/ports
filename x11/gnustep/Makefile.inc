# $OpenBSD: Makefile.inc,v 1.2 2007/06/19 15:19:27 ajacoutot Exp $

BROKEN=		needs libobjc with threads support

CATEGORIES+=	x11/gnustep
DIST_SUBDIR=	gnustep

# GPLv2 & LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_FILE?=	GNUmakefile

MAINTAINER?=	Antoine Jacoutot <ajacoutot@openbsd.org>

# install the gnustep-examples package if you need a test suite
NO_REGRESS=	Yes
