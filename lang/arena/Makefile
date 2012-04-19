# $OpenBSD: Makefile,v 1.11 2012/04/19 06:46:41 jasper Exp $

COMMENT=	lightweight scripting language with C-like syntax

DISTNAME=	arena-0.9.13
REVISION=	1
CATEGORIES=	lang

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://www.minimalinux.org/arena/doc.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${HOMEPAGE}/../

CONFIGURE_STYLE=gnu

REGRESS_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/arena/
	${INSTALL_DATA} ${WRKSRC}/examples/*.are ${PREFIX}/share/examples/arena/

.include <bsd.port.mk>
