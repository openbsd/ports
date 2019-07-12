# $OpenBSD: Makefile,v 1.29 2019/07/12 20:47:59 sthen Exp $

COMMENT=	point-to-point bandwidth measurement tool

DISTNAME=	bing-1.0.5
REVISION=	3
CATEGORIES=	net
MASTER_SITES=	https://distfiles.nl/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bing
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bing

.include <bsd.port.mk>
