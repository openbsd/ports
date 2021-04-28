# $OpenBSD: Makefile,v 1.2 2021/04/28 20:12:54 solene Exp $

COMMENT =	PNG compressor

GH_ACCOUNT =	kornelski
GH_PROJECT =	pngquant
GH_TAGNAME =	2.14.1
REVISION =	0

CATEGORIES =	graphics

MAINTAINER =	Solene Rapenne <solene@perso.pw>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB =	c imagequant m z png lcms2

LIB_DEPENDS =	graphics/lcms2 \
		graphics/libimagequant \
		graphics/png

BUILD_DEPENDS =	shells/bash

USE_GMAKE =	Yes

MAKE_ENV =	CC="${CC}"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pngquant/
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/share/pngquant/
	${INSTALL_MAN} ${WRKSRC}/pngquant.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/pngquant ${PREFIX}/bin

.include <bsd.port.mk>
