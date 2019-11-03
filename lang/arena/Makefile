# $OpenBSD: Makefile,v 1.16 2019/11/03 14:07:43 jasper Exp $

COMMENT=	lightweight scripting language with C-like syntax

DISTNAME=	arena-0.9.13
REVISION=	3
CATEGORIES=	lang

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c m

MASTER_SITES=	https://distfiles.nl/

CONFIGURE_STYLE=gnu

TEST_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/arena/
	${INSTALL_DATA} ${WRKSRC}/examples/*.are ${PREFIX}/share/examples/arena/

.include <bsd.port.mk>
