# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:38 rsadowski Exp $

COMMENT =	KDE widgets for showing progress of asynchronous jobs
DISTNAME =	kjobwidgets-${VERSION}

SHARED_LIBS =	KF5JobWidgets		2.0

WANTLIB =  KF5CoreAddons KF5WidgetsAddons Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Widgets Qt5X11Extras m

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/kwidgetsaddons \
		x11/qt5/qtx11extras

NO_TEST =	Yes

.include <bsd.port.mk>
