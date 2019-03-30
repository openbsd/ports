# $OpenBSD: Makefile,v 1.10 2019/03/30 09:13:52 rsadowski Exp $

COMMENT =	KDE widgets for showing progress of asynchronous jobs
DISTNAME =	kjobwidgets-${VERSION}

SHARED_LIBS =	KF5JobWidgets		3.3

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5WidgetsAddons Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Widgets Qt5X11Extras m

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/kwidgetsaddons \
		x11/qt5/qtx11extras

.include <bsd.port.mk>
