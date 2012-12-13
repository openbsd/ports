# $OpenBSD: Makefile,v 1.3 2012/12/13 16:34:48 naddy Exp $

COMMENT=		Standalone version of arguments parsing functions from GLIBC

DISTNAME=		argp-standalone-1.3
REVISION=		0

CATEGORIES=		devel

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.lysator.liu.se/~nisse/misc/

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-dependency-tracking

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libargp.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/argp.h ${PREFIX}/include

.include <bsd.port.mk>
