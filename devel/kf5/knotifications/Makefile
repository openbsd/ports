# $OpenBSD: Makefile,v 1.6 2017/07/30 14:40:08 espie Exp $

COMMENT =	KDE desktop notifications framework
DISTNAME =	knotifications-${VERSION}
REVISION =	2

SHARED_LIBS =	KF5Notifications	2.0

WANTLIB =  KF5Codecs KF5ConfigCore KF5CoreAddons KF5WindowSystem
WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5X11Extras
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
