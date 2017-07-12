# $OpenBSD: Makefile,v 1.4 2017/07/12 00:05:04 zhuk Exp $

COMMENT =	KDE hardware abstraction layer
DISTNAME =	solid-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5Solid		2.0

WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Widgets
WANTLIB += Qt5Xml c m

BUILD_DEPENDS =	devel/bison

LIB_DEPENDS =	x11/qt5/qtdeclarative

# TODO: The following tests FAILED:
#          2 - halbasictest (Failed)

.include <bsd.port.mk>
