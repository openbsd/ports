# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:58 zhuk Exp $

COMMENT =	KDE widgets for showing progress of asynchronous jobs
DISTNAME =	kjobwidgets-${VERSION}

SHARED_LIBS =	KF5JobWidgets		0.0

WANTLIB =  KF5CoreAddons KF5WidgetsAddons Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Widgets Qt5X11Extras m

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/kwidgetsaddons

.include <bsd.port.mk>
