# $OpenBSD: Makefile,v 1.7 2019/03/08 20:00:39 cwen Exp $

QT5NAME =		QtScript
COMMENT-main =		ECMAScript language for Qt5
REVISION-main =		0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =	Qt5Script		2.2
SHARED_LIBS +=	Qt5ScriptTools		2.2

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets m

RUN_DEPENDS-examples =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
