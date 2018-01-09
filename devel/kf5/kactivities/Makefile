# $OpenBSD: Makefile,v 1.8 2018/01/09 21:10:39 rsadowski Exp $

COMMENT =	core components for the KDE Activity concept
DISTNAME =	kactivities-${VERSION}
PKGNAME =	kf5-${DISTNAME}

SHARED_LIBS =	KF5Activities		4.0

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Sql c
WANTLIB += m

BUILD_DEPENDS =	devel/boost \
		devel/gettext-tools

# oversight of upstream, not used
BUILD_DEPENDS+=	devel/kf5/kwindowsystem

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kio \
		x11/qt5/qtdeclarative

.include <bsd.port.mk>
