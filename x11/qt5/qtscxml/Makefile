# $OpenBSD: Makefile,v 1.11 2021/11/15 21:23:32 rsadowski Exp $

QT5NAME =		QtScxml
COMMENT-main =		create state machines from SCXML files

REVISION-main =		0
REVISION-examples =	0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5Scxml                1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml c m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
