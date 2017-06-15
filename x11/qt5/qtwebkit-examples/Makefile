# $OpenBSD: Makefile,v 1.1.1.1 2017/06/15 08:41:48 zhuk Exp $

QT5NAME =		QtWebkitExamples
PKG_ARCH =		*
COMMENT =		examples for old Qt5 Webkit
DISTNAME =		qtwebkit-examples-opensource-src-${VERSION}

CATEGORIES =		www

MASTER_SITES =		http://download.qt.io/community_releases/${DIST_VERSION:R}/${DIST_VERSION}-final/

LIB_DEPENDS- =
BUILD_DEPENDS =		x11/qt5/qtwebkit>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS =		x11/qt5/qtwebkit>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/qt5/examples
	cd ${WRKSRC}/examples; \
        pax -rw */ ${PREFIX}/lib/qt5/examples

.include <bsd.port.mk>
