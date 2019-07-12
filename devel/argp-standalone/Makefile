# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:03 sthen Exp $

COMMENT=	standalone version of argument parsing functions from GLIBC

DISTNAME=	argp-standalone-1.3
REVISION=	3

CATEGORIES=	devel

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://www.lysator.liu.se/~nisse/misc/

SEPARATE_BUILD=		Yes
AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--disable-dependency-tracking
CFLAGS+=		--std=gnu89

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libargp.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/argp.h ${PREFIX}/include

.include <bsd.port.mk>
