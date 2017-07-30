# $OpenBSD: Makefile,v 1.5 2017/07/30 12:57:16 espie Exp $

COMMENT =	KDE widgets for showing progress of asynchronous jobs
DISTNAME =	kjobwidgets-${VERSION}
REVISION =	1

SHARED_LIBS =	KF5JobWidgets		2.0

WANTLIB =  KF5CoreAddons KF5WidgetsAddons ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Widgets Qt5X11Extras m

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/kwidgetsaddons \
		x11/qt5/qtx11extras

NO_TEST =	Yes

.include <bsd.port.mk>
