# $OpenBSD: Makefile,v 1.12 2019/03/08 20:00:43 cwen Exp $

COMMENT =	KDE hardware abstraction layer
DISTNAME =	solid-${VERSION}

REVISION =	1

SHARED_LIBS =	KF5Solid		5.3

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Widgets Qt5Xml c m

BUILD_DEPENDS =	devel/bison

LIB_DEPENDS =	x11/qt5/qtdeclarative

.include <bsd.port.mk>
