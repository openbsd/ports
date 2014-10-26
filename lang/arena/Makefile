# $OpenBSD: Makefile,v 1.13 2014/10/26 14:02:48 jasper Exp $

COMMENT=	lightweight scripting language with C-like syntax

DISTNAME=	arena-0.9.13
REVISION=	2
CATEGORIES=	lang

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

MASTER_SITES=	http://distfiles.nl/

CONFIGURE_STYLE=gnu

TEST_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/arena/
	${INSTALL_DATA} ${WRKSRC}/examples/*.are ${PREFIX}/share/examples/arena/

.include <bsd.port.mk>
