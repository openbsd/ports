# $OpenBSD: Makefile,v 1.18 2020/04/23 08:36:11 jasper Exp $

COMMENT=	lightweight scripting language with C-like syntax

DISTNAME=	arena-0.9.13
REVISION=	4
CATEGORIES=	lang

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c m

MASTER_SITES=	https://distfiles.sigtrap.nl/

CONFIGURE_STYLE=gnu

TEST_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/arena/
	${INSTALL_DATA} ${WRKSRC}/examples/*.are ${PREFIX}/share/examples/arena/

.include <bsd.port.mk>
