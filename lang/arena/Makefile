# $OpenBSD: Makefile,v 1.12 2013/03/11 11:20:27 espie Exp $

COMMENT=	lightweight scripting language with C-like syntax

DISTNAME=	arena-0.9.13
REVISION=	1
CATEGORIES=	lang

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://www.minimalinux.org/arena/doc.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

MASTER_SITES=	${HOMEPAGE}/../

CONFIGURE_STYLE=gnu

TEST_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/arena/
	${INSTALL_DATA} ${WRKSRC}/examples/*.are ${PREFIX}/share/examples/arena/

.include <bsd.port.mk>
