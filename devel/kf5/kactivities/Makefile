# $OpenBSD: Makefile,v 1.15 2020/03/23 18:01:04 rsadowski Exp $

COMMENT =	core components for the KDE Activity concept
DISTNAME =	kactivities-${VERSION}
PKGNAME =	kf5-${DISTNAME}

SHARED_LIBS =	KF5Activities		5.0

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Sql c
WANTLIB += m

BUILD_DEPENDS =	devel/boost \
		devel/gettext,-tools \
		devel/kf5/kwindowsystem>=${MODKF5_VERSION} \
		x11/qt5/qtquickcontrols

RUN_DEPENDS =	x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		x11/qt5/qtdeclarative

.include <bsd.port.mk>
