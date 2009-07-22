# $OpenBSD: Makefile,v 1.40 2009/07/22 21:19:13 sthen Exp $

COMMENT=	portable speedy lossless data compression library

DISTNAME=	lzo-1.08
PKGNAME=	${DISTNAME}p1
CATEGORIES=	archivers devel
MASTER_SITES=	${HOMEPAGE}download/LZO-v1/
SHARED_LIBS +=	lzo                  1.0      # .1.0

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
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/acconfig

REGRESS_TARGET=	test

USE_LIBTOOL=	Yes
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lzo
	${INSTALL_DATA}	${WRKSRC}/doc/* ${PREFIX}/share/doc/lzo

.include <bsd.port.mk>
