# $OpenBSD: Makefile,v 1.27 2019/07/12 20:43:49 sthen Exp $

COMMENT=	converter to/from base64 encoding

DISTNAME=	base64-1.5
CATEGORIES=	converters
REVISION =	0

HOMEPAGE=	http://www.fourmilab.ch/webtools/base64/

# public domain
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu
ALL_TARGET=	prog
TEST_TARGET=	wringer

.include <bsd.port.mk>
