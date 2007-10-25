# $OpenBSD: Makefile,v 1.1.1.1 2007/10/25 18:13:16 wilfried Exp $

COMMENT=		Standalone version of arguments parsing functions from GLIBC

DISTNAME=		argp-standalone-1.3

CATEGORIES=		devel

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.lysator.liu.se/~nisse/misc/

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-dependency-tracking

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libargp.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/argp.h ${PREFIX}/include

.include <bsd.port.mk>
