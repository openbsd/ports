# $OpenBSD: Makefile,v 1.10 2018/06/04 20:25:33 rsadowski Exp $

COMMENT =		KDE framework for Plasma runners
DISTNAME =		krunner-${VERSION}

SHARED_LIBS =		KF5Runner		5.1

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Package KF5Plasma KF5Service KF5ThreadWeaver
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5Widgets m

BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/ki18n \
			devel/kf5/kio \
			devel/kf5/kservice \
			devel/kf5/plasma-framework \
			devel/kf5/threadweaver \
			x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
