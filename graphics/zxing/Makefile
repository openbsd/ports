# $OpenBSD: Makefile,v 1.3 2013/03/11 11:10:56 espie Exp $

COMMENT =		barcode image processing library

DISTNAME =		ZXing-2.0
PKGNAME =		${DISTNAME:L}
REVISION =		0

CATEGORIES =		graphics

HOMEPAGE =		https://code.google.com/p/zxing/

# Apache 2.0
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=	Magick++ MagickCore MagickWand c m pthread stdc++

MASTER_SITES =		https://zxing.googlecode.com/files/
EXTRACT_SUFX =		.zip

MODULES =		converters/libiconv devel/scons
BUILD_DEPENDS =		devel/cppunit
LIB_DEPENDS =		graphics/ImageMagick

WRKDIST =		${WRKDIR}/${DISTNAME:L}
WRKSRC =		${WRKDIST}/cpp

SUBST_VARS +=		WRKDIST WRKSRC CXX CXXFLAGS

pre-configure:
	${SUBST_CMD} ${WRKSRC}/SConscript ${WRKSRC}/blackboxtest.sh

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/build/zxing ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/build/libzxing.a ${PREFIX}/lib

do-test:
	sh ${WRKSRC}/blackboxtest.sh

.include <bsd.port.mk>
