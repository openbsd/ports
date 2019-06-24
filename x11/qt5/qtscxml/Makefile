# $OpenBSD: Makefile,v 1.7 2019/06/24 20:56:46 sthen Exp $

QT5NAME =		QtScxml
COMMENT-main =		create state machines from SCXML files
REVISION-main =		1

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =	Qt5Scxml		0.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml c m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
