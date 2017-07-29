# $OpenBSD: Makefile,v 1.4 2017/07/29 00:07:14 zhuk Exp $

QT5NAME =		QtRemoteObjects
REVISION =		0
COMMENT-main =		inter-process communication using Qt5 objects

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =	Qt5RemoteObjects		0.0

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml c m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
