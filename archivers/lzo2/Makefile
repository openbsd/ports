# $OpenBSD: Makefile,v 1.7 2013/03/10 22:28:04 espie Exp $

COMMENT=	portable speedy lossless data compression library

DISTNAME=	lzo-2.06
PKGNAME=	${DISTNAME:S/lzo/lzo2/}
CATEGORIES=	archivers devel
MASTER_SITES=	${HOMEPAGE}download/
SHARED_LIBS +=	lzo2	0.0 # .2.0

HOMEPAGE=	http://www.oberhumer.com/opensource/lzo/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		--docdir=${PREFIX}/share/doc/lzo2/

TEST_TARGET=	test

USE_LIBTOOL=	Yes

.include <bsd.port.mk>
