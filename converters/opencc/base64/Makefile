# $OpenBSD: Makefile,v 1.1.1.1 2018/12/18 09:20:19 bentley Exp $

COMMENT=	converter to/from base64 encoding

DISTNAME=	base64-1.5
CATEGORIES=	converters
REVISION =	1

HOMEPAGE=	https://www.fourmilab.ch/webtools/base64/

# public domain
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu
ALL_TARGET=	prog
TEST_TARGET=	wringer

.include <bsd.port.mk>
