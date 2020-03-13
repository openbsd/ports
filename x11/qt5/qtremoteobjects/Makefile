# $OpenBSD: Makefile,v 1.10 2020/03/13 16:53:52 rsadowski Exp $

QT5NAME =		QtRemoteObjects
COMMENT-main =		inter-process communication using Qt5 objects

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5RemoteObjects                1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += c m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
