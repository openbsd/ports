# $OpenBSD: Makefile,v 1.8 2010/11/17 08:05:14 espie Exp $

COMMENT=	generate index pages for displaying images

DISTNAME=	indexpage-1.0.3
CATEGORIES=	graphics

HOMEPAGE=	http://www.lysator.liu.se/~unicorn/hacks/indexpage/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	graphics/p5-Image-Size \
		graphics/ImageMagick

NO_BUILD=	Yes
PKG_ARCH=	*

REGRESS_TARGET=	test
PORTHOME=	${WRKDIR}	# for regress

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/indexpage
	${INSTALL_SCRIPT} ${WRKSRC}/indexpage.pl ${PREFIX}/bin/indexpage
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/indexpage

.include <bsd.port.mk>
