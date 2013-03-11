# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:00 espie Exp $

COMMENT=		Standalone version of arguments parsing functions from GLIBC

DISTNAME=		argp-standalone-1.3
REVISION=		0

CATEGORIES=		devel

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.lysator.liu.se/~nisse/misc/

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-dependency-tracking

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libargp.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/argp.h ${PREFIX}/include

.include <bsd.port.mk>
