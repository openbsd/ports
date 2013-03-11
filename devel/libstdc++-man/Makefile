# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:10 espie Exp $

PKG_ARCH=	*
COMMENT=	manpages for the standard C++ library

DISTNAME=	libstdc++-man-3.3

CATEGORIES=	devel lang/gcc

HOMEPAGE=	http://gcc.gnu.org/onlinedocs/libstdc++/
MASTER_SITES=	ftp://gcc.gnu.org/pub/gcc/libstdc++/doxygen/
EXTRACT_SUFX=	.tar.bz2

# GFDL
PERMIT_PACKAGE_CDROM=	Yes

USE_GROFF =	Yes
NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	cd ${WRKSRC}/man3 && \
	find *.3 -exec ${INSTALL_MAN} {} ${PREFIX}/man/man3/{} \;

.include <bsd.port.mk>
