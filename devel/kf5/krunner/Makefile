# $OpenBSD: Makefile,v 1.15 2020/03/23 18:01:10 rsadowski Exp $

COMMENT =		KDE framework for Plasma runners
DISTNAME =		krunner-${VERSION}

SHARED_LIBS =		KF5Runner		6.0

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Package KF5Plasma KF5Service KF5ThreadWeaver
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5Widgets m

BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS =	devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kio>=${MODKF5_VERSION} \
		devel/kf5/kservice>=${MODKF5_VERSION} \
		devel/kf5/plasma-framework>=${MODKF5_VERSION} \
		devel/kf5/threadweaver>=${MODKF5_VERSION} \
		x11/qt5/qtdeclarative

# sucks (dbus)
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
