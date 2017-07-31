# $OpenBSD: Makefile,v 1.4 2017/07/31 11:11:55 zhuk Exp $

QT5NAME =		QtWebkitExamples
PKG_ARCH =		*
REVISION =		1
COMMENT =		examples for old Qt5 Webkit
DISTNAME =		qtwebkit-examples-opensource-src-${VERSION}
VERSION =		${QT5_WEBKIT_VERSION}
DIST_VERSION =		${QT5_WEBKIT_VERSION}

CATEGORIES =		www

MASTER_SITES =		http://download.qt.io/community_releases/${DIST_VERSION:R}/${DIST_VERSION}-final/

LIB_DEPENDS- =
BUILD_DEPENDS =		x11/qt5/qtwebkit>=${QT5_WEBKIT_VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS =		x11/qt5/qtwebkit>=${QT5_WEBKIT_VERSION:R},<${QT5_NEXT_VERSION}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/qt5/examples
	cd ${WRKSRC}/examples; \
        pax -rw */ ${PREFIX}/lib/qt5/examples

.include <bsd.port.mk>
