# $OpenBSD: Makefile,v 1.6 2019/03/08 20:00:49 cwen Exp $

QT5NAME =		QtRemoteObjects
COMMENT-main =		inter-process communication using Qt5 objects
REVISION-main =		0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =	Qt5RemoteObjects		0.1

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += c m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
