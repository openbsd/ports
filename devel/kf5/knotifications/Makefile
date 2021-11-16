# $OpenBSD: Makefile,v 1.20 2021/11/16 14:31:01 rsadowski Exp $

COMMENT =	KDE desktop notifications framework
DISTNAME =	knotifications-${VERSION}

SHARED_LIBS =	KF5Notifications	6.3

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5WindowSystem
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5TextToSpeech
WANTLIB += Qt5Widgets Qt5X11Extras X11 Xtst canberra dbusmenu-qt5
WANTLIB += m

LIB_DEPENDS =	audio/libcanberra \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/kwindowsystem>=${MODKF5_VERSION} \
		x11/dbusmenu-qt \
		x11/qt5/qtdeclarative \
		x11/qt5/qtspeech \
		x11/qt5/qtx11extras

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
