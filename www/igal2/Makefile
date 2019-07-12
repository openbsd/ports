# $OpenBSD: Makefile,v 1.6 2019/07/12 20:50:47 sthen Exp $

COMMENT=	online Image GALlery generator

DISTNAME=	igal2-2.2
CATEGORIES=	www graphics

HOMEPAGE=	http://igal.trexler.at/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	graphics/ImageMagick \
		graphics/jpeg \
		graphics/p5-Image-ExifTool

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

DATADIR=	${PREFIX}/share/igal2

do-configure:
	sed -i	-e "s,/usr/local,${PREFIX},g" \
		-e "s,${PREFIX}/lib/igal2,${DATADIR},g" \
		${WRKSRC}/igal2{,.1}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/igal2 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/igal2.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/*.{css,html,png} ${DATADIR}

.include <bsd.port.mk>
