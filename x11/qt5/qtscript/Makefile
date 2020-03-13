# $OpenBSD: Makefile,v 1.10 2020/03/13 16:53:52 rsadowski Exp $

QT5NAME =		QtScript
COMMENT-main =		ECMAScript language for Qt5

MULTI_PACKAGES =	-main -examples
SHARED_LIBS +=  Qt5Script                 3.0 # 5.9
SHARED_LIBS +=  Qt5ScriptTools            3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets m

RUN_DEPENDS-examples =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
