# $OpenBSD: Makefile,v 1.22 2021/10/13 15:02:06 rsadowski Exp $

COMMENT =		KDE framework for Plasma runners
DISTNAME =		krunner-${VERSION}

SHARED_LIBS =		KF5Runner		8.1

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5KIOCore KF5Package KF5Plasma KF5Service
WANTLIB += KF5ThreadWeaver Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5Widgets
WANTLIB += m

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
