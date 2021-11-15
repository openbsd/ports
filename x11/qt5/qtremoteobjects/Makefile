# $OpenBSD: Makefile,v 1.11 2021/11/15 21:23:32 rsadowski Exp $

QT5NAME =		QtRemoteObjects
COMMENT-main =		inter-process communication using Qt5 objects

REVISION-main =		0
REVISION-examples =	0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5RemoteObjects                1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += c m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
