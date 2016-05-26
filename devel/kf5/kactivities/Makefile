# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:57 zhuk Exp $

COMMENT =	core components for the KDE Activity concept
DISTNAME =	kactivities-${VERSION}
PKGNAME =	kf5-${DISTNAME}

SHARED_LIBS =	KF5Activities		0.0

WANTLIB =  KF5ConfigCore KF5CoreAddons KF5KIOCore KF5Service
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Sql
WANTLIB += m

BUILD_DEPENDS =	devel/boost \
		devel/gettext-tools

# oversight of upstream, not used
BUILD_DEPENDS+=	devel/kf5/kwindowsystem

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kio

CONFIGURE_ENV =	CXXFLAGS="${CXXFLAGS} -DBOOST_NO_EXCEPTIONS=1"

.include <bsd.port.mk>
