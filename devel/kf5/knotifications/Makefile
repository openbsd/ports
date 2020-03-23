# $OpenBSD: Makefile,v 1.13 2020/03/23 18:01:09 rsadowski Exp $

COMMENT =	KDE desktop notifications framework
DISTNAME =	knotifications-${VERSION}

SHARED_LIBS =	KF5Notifications	5.0

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5WindowSystem
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5X11Extras X11
WANTLIB += Xtst canberra dbusmenu-qt5 m

LIB_DEPENDS =	audio/libcanberra \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/kwindowsystem>=${MODKF5_VERSION} \
		x11/dbusmenu-qt,qt5 \
		x11/qt5/qtx11extras

PORTHOME =	${WRKDIR}

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Qt5TextToSpeech=ON

.include <bsd.port.mk>
