# $OpenBSD: Makefile,v 1.6 2020/11/03 16:12:38 rsadowski Exp $

COMMENT =	QtQuick plugin to render interactive charts
DISTNAME =	kqtquickcharts-${VERSION}
CATEGORIES =	devel

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick m

RUN_DEPENDS =	x11/qt5/qtquickcontrols

LIB_DEPENDS =	x11/qt5/qtdeclarative

NO_TEST =	Yes

.include <bsd.port.mk>
