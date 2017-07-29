# $OpenBSD: Makefile,v 1.4 2017/07/29 00:07:15 zhuk Exp $

QT5NAME =		QtScxml
REVISION =		0
COMMENT-main =		create state machines from SCXML files

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =	Qt5Scxml		0.0

WANTLIB =  ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml c m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
