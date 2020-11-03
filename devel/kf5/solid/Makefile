# $OpenBSD: Makefile,v 1.16 2020/11/03 16:12:09 rsadowski Exp $

COMMENT =	KDE hardware abstraction layer
DISTNAME =	solid-${VERSION}

SHARED_LIBS =	KF5Solid		7.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Xml c m

BUILD_DEPENDS =	devel/bison

LIB_DEPENDS =	x11/qt5/qtdeclarative

#The following tests FAILED:
#2 - halbasictest (Failed)

.include <bsd.port.mk>
