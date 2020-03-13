# $OpenBSD: Makefile,v 1.10 2020/03/13 16:53:52 rsadowski Exp $

QT5NAME =		QtScxml
COMMENT-main =		create state machines from SCXML files

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5Scxml                1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml c m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
