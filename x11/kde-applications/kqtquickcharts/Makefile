# $OpenBSD: Makefile,v 1.2 2018/12/18 09:39:20 rsadowski Exp $

COMMENT =	QtQuick plugin to render interactive charts
DISTNAME =	kqtquickcharts-${VERSION}
CATEGORIES =	devel

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick m

MODULES +=	x11/kde-applications

RUN_DEPENDS +=	x11/qt5/qtquickcontrols

LIB_DEPENDS +=	x11/qt5/qtdeclarative

NO_TEST =	Yes

.include <bsd.port.mk>
