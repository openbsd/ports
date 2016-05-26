# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:59:00 zhuk Exp $

COMMENT =	statistics for the KDE Activity concept
DISTNAME =	kactivities-stats-${VERSION}

SHARED_LIBS =	KF5ActivitiesStats	0.0

WANTLIB =  KF5Activities KF5ConfigCore Qt5Core Qt5DBus Qt5Sql
WANTLIB += m

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/kactivities \
		devel/kf5/kconfig

CONFIGURE_ENV =	CXXFLAGS="${CXXFLAGS} -DBOOST_NO_EXCEPTIONS=1"

.include <bsd.port.mk>
