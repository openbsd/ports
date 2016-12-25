# $OpenBSD: Makefile,v 1.2 2016/12/25 14:54:48 zhuk Exp $

COMMENT =	statistics for the KDE Activity concept
DISTNAME =	kactivities-stats-${VERSION}

SHARED_LIBS =	KF5ActivitiesStats	1.0

WANTLIB =  KF5Activities KF5ConfigCore Qt5Core Qt5DBus Qt5Sql
WANTLIB += m

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/kactivities \
		devel/kf5/kconfig

CONFIGURE_ENV =	CXXFLAGS="${CXXFLAGS} -DBOOST_NO_EXCEPTIONS=1"

CONFIGURE_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0048=OLD

TEST_NO =	Yes

.include <bsd.port.mk>
