# $OpenBSD: Makefile,v 1.10 2020/03/23 18:01:11 rsadowski Exp $

COMMENT =		bar code generator
DISTNAME =		prison-${VERSION}

SHARED_LIBS =		KF5Prison	5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick dmtx m qrencode

BUILD_DEPENDS =	x11/qt5/qtquickcontrols

RUN_DEPENDS =	x11/qt5/qtquickcontrols

LIB_DEPENDS =	graphics/libdmtx \
		graphics/libqrencode \
		x11/qt5/qtdeclarative

.include <bsd.port.mk>
