# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:59 zhuk Exp $

COMMENT =	KDE hardware abstraction layer
DISTNAME =	solid-${VERSION}

SHARED_LIBS =	KF5Solid		0.0

WANTLIB =  Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Widgets
WANTLIB += Qt5Xml c m

BUILD_DEPENDS =	devel/bison

# TODO: The following tests FAILED:
#          2 - halbasictest (Failed)

.include <bsd.port.mk>
