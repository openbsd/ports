# $OpenBSD: Makefile,v 1.11 2020/06/14 11:54:49 rsadowski Exp $

COMMENT =		bar code generator
DISTNAME =		prison-${VERSION}
PKGNAME =		prison-kf5-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5Prison	5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick dmtx m qrencode

BUILD_DEPENDS =	x11/qt5/qtquickcontrols

RUN_DEPENDS =	x11/qt5/qtquickcontrols

LIB_DEPENDS =	graphics/libdmtx \
		graphics/libqrencode \
		x11/qt5/qtdeclarative

.include <bsd.port.mk>
