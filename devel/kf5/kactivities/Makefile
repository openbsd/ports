# $OpenBSD: Makefile,v 1.11 2018/10/22 20:30:41 rsadowski Exp $

COMMENT =	core components for the KDE Activity concept
DISTNAME =	kactivities-${VERSION}
PKGNAME =	kf5-${DISTNAME}

SHARED_LIBS =	KF5Activities		4.2

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Sql c
WANTLIB += m

BUILD_DEPENDS =	devel/boost \
		devel/gettext-tools

# oversight of upstream, not used
BUILD_DEPENDS+=	devel/kf5/kwindowsystem \
		devel/kf5/kio

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		x11/qt5/qtdeclarative

.include <bsd.port.mk>
