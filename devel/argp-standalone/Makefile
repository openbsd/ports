# $OpenBSD: Makefile,v 1.8 2017/09/29 23:36:03 sthen Exp $

COMMENT=	standalone version of argument parsing functions from GLIBC

DISTNAME=	argp-standalone-1.3
REVISION=	3

CATEGORIES=	devel

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.lysator.liu.se/~nisse/misc/

SEPARATE_BUILD=		Yes
AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--disable-dependency-tracking
CFLAGS+=		--std=gnu89

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libargp.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/argp.h ${PREFIX}/include

.include <bsd.port.mk>
