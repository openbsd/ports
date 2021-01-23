# $OpenBSD: Makefile,v 1.15 2021/01/23 18:09:51 rsadowski Exp $

COMMENT =	statistics for the KDE Activity concept
DISTNAME =	kactivities-stats-${VERSION}

SHARED_LIBS =	KF5ActivitiesStats	8.0

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5ConfigCore Qt5Core
WANTLIB += Qt5DBus Qt5Sql m

BUILD_DEPENDS =	devel/boost \
		x11/qt5/qtdeclarative \
		x11/qt5/qtquickcontrols

RUN_DEPENDS =	x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/kactivities>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION}

# For boost
CONFIGURE_ENV +=	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

.include <bsd.port.mk>
