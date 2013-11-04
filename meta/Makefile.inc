# $OpenBSD: Makefile.inc,v 1.3 2013/11/04 14:05:43 ajacoutot Exp $

CATEGORIES=		meta
DISTFILES=		#empty
NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*
PERMIT_PACKAGE_CDROM=	Yes

# by default don't do anything (can be overridden in each port Makefile)
do-install:
