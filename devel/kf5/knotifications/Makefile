# $OpenBSD: Makefile,v 1.2 2016/12/25 14:54:49 zhuk Exp $

COMMENT =	KDE desktop notifications framework
DISTNAME =	knotifications-${VERSION}

SHARED_LIBS =	KF5Notifications	1.0

WANTLIB =  KF5Codecs KF5ConfigCore KF5CoreAddons KF5WindowSystem
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += X11 Xtst dbusmenu-qt5 m phonon4qt5experimental

MODULES =	multimedia/phonon

LIB_DEPENDS =	devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kwindowsystem \
		x11/dbusmenu-qt,qt5>=0.9.3 \
		x11/qt5/qtx11extras

PORTHOME =	${WRKDIR}

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Qt5TextToSpeech=Yes

.include <bsd.port.mk>
