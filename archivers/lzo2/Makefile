# $OpenBSD: Makefile,v 1.1.1.1 2009/07/24 14:35:42 sthen Exp $

COMMENT=	portable speedy lossless data compression library

DISTNAME=	lzo-2.03
PKGNAME=	${DISTNAME:S/lzo/lzo2/}
CATEGORIES=	archivers devel
MASTER_SITES=	${HOMEPAGE}download/
SHARED_LIBS +=	lzo2	0.0 # .2.0

HOMEPAGE=	http://www.oberhumer.com/opensource/lzo/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

REGRESS_TARGET=	test

USE_LIBTOOL=	Yes
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lzo2
	${INSTALL_DATA}	${WRKSRC}/doc/* ${PREFIX}/share/doc/lzo2

.include <bsd.port.mk>
