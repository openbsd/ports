# $OpenBSD: Makefile,v 1.1.1.1 2018/04/26 16:08:45 rsadowski Exp $

COMMENT =	QtQuick plugin to render interactive charts
DISTNAME =	kqtquickcharts-${VERSION}
CATEGORIES =	devel

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick m

LIB_DEPENDS =	x11/qt5/qtdeclarative

NO_TEST =	Yes

.include <bsd.port.mk>
