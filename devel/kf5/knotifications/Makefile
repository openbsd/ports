# $OpenBSD: Makefile,v 1.10 2018/10/22 20:30:42 rsadowski Exp $

COMMENT =	KDE desktop notifications framework
DISTNAME =	knotifications-${VERSION}

SHARED_LIBS =	KF5Notifications	4.2

WANTLIB += ${COMPILER_LIBCXX} KF5Codecs KF5ConfigCore KF5CoreAddons
WANTLIB += KF5WindowSystem Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += X11 Xtst canberra dbusmenu-qt5 m

LIB_DEPENDS =	devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kwindowsystem \
		audio/libcanberra \
		x11/dbusmenu-qt,qt5>=0.9.3 \
		x11/qt5/qtx11extras

PORTHOME =	${WRKDIR}

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Qt5TextToSpeech=Yes

.include <bsd.port.mk>
