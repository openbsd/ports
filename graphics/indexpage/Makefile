# $OpenBSD: Makefile,v 1.12 2019/07/12 21:02:21 sthen Exp $

COMMENT=	generate index pages for displaying images

DISTNAME=	indexpage-1.0.3
CATEGORIES=	graphics
REVISION =	0

HOMEPAGE=	http://www.lysator.liu.se/~unicorn/hacks/indexpage/

PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://distfiles.nl/

RUN_DEPENDS=	graphics/p5-Image-Size \
		graphics/ImageMagick

NO_BUILD=	Yes
PKG_ARCH=	*

TEST_TARGET=	test
PORTHOME=	${WRKDIR}	# for regression tests

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/indexpage
	${INSTALL_SCRIPT} ${WRKSRC}/indexpage.pl ${PREFIX}/bin/indexpage
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/indexpage

.include <bsd.port.mk>
