# $OpenBSD: Makefile,v 1.25 2014/11/01 21:17:57 schwarze Exp $

COMMENT=	converter to/from base64 encoding

DISTNAME=	base64-1.5
CATEGORIES=	converters

HOMEPAGE=	http://www.fourmilab.ch/webtools/base64/

# public domain
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu
ALL_TARGET=	prog
TEST_TARGET=	wringer

.include <bsd.port.mk>
