# $OpenBSD: Makefile,v 1.11 2020/03/23 18:01:09 rsadowski Exp $

COMMENT =	KDE widgets for showing progress of asynchronous jobs
DISTNAME =	kjobwidgets-${VERSION}

SHARED_LIBS =	KF5JobWidgets		4.0

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5WidgetsAddons Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Widgets Qt5X11Extras m

LIB_DEPENDS =	devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
		x11/qt5/qtx11extras

.include <bsd.port.mk>
