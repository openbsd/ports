# $OpenBSD: Makefile,v 1.7 2018/01/09 21:10:39 rsadowski Exp $

COMMENT =	statistics for the KDE Activity concept
DISTNAME =	kactivities-stats-${VERSION}

SHARED_LIBS =	KF5ActivitiesStats	4.0

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5ConfigCore Qt5Core
WANTLIB += Qt5DBus Qt5Sql m

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/kactivities \
		devel/kf5/kconfig

CONFIGURE_ENV =	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

.include <bsd.port.mk>
