# $OpenBSD: Makefile,v 1.17 2020/12/19 16:25:06 rsadowski Exp $

COMMENT =	KDE desktop notifications framework
DISTNAME =	knotifications-${VERSION}

SHARED_LIBS =	KF5Notifications	6.0

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5WindowSystem
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5TextToSpeech Qt5Widgets Qt5X11Extras
WANTLIB += X11 Xtst canberra dbusmenu-qt5 m

LIB_DEPENDS =	audio/libcanberra \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/kwindowsystem>=${MODKF5_VERSION} \
		x11/dbusmenu-qt \
		x11/qt5/qtx11extras \
		x11/qt5/qtspeech

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
