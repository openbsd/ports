# $OpenBSD: Makefile,v 1.15 2019/07/12 20:47:16 sthen Exp $

COMMENT=	lightweight scripting language with C-like syntax

DISTNAME=	arena-0.9.13
REVISION=	2
CATEGORIES=	lang

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

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
