# $OpenBSD: Makefile.inc,v 1.4 2019/07/12 20:47:47 sthen Exp $

CATEGORIES=		meta
DISTFILES=		#empty
NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*
PERMIT_PACKAGE=	Yes

# by default don't do anything (can be overridden in each port Makefile)
do-install:
