# $OpenBSD: Makefile,v 1.1.1.1 2008/06/13 21:59:17 landry Exp $

PKG_ARCH=	*
COMMENT=	manpages for the standard C++ library

DISTNAME=	libstdc++-man-3.3

CATEGORIES=	devel lang/gcc

HOMEPAGE=	http://gcc.gnu.org/onlinedocs/libstdc++/
MASTER_SITES=	ftp://gcc.gnu.org/pub/gcc/libstdc++/doxygen/
EXTRACT_SUFX=	.tar.bz2

# GFDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	cd ${WRKSRC}/man3 && \
	find *.3 -exec ${INSTALL_MAN} {} ${PREFIX}/man/man3/{} \;

.include <bsd.port.mk>
