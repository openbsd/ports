# $OpenBSD: Makefile,v 1.9 2020/03/13 16:53:51 rsadowski Exp $

QT5NAME =		QtLocation
COMMENT-main =		Qt5 geo positioning APIs

SHARED_LIBS +=  Qt5Location               2.0 # 5.9
SHARED_LIBS +=  Qt5Positioning            3.0 # 5.9
SHARED_LIBS +=  Qt5PositioningQuick       0.0 # 5.13

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Sql crypto m ssl
WANTLIB += z

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

RUN_DEPENDS =		x11/dbus

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
