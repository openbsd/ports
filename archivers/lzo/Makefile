# $OpenBSD: Makefile,v 1.46 2014/01/11 11:22:43 espie Exp $

COMMENT=	portable speedy lossless data compression library

DISTNAME=	lzo-1.08
REVISION=	3
CATEGORIES=	archivers devel
MASTER_SITES=	${HOMEPAGE}download/LZO-v1/
SHARED_LIBS +=	lzo                  1.0      # .1.0

HOMEPAGE=	http://www.oberhumer.com/opensource/lzo/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/acconfig

TEST_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lzo
	${INSTALL_DATA}	${WRKSRC}/doc/* ${PREFIX}/share/doc/lzo

.include <bsd.port.mk>
