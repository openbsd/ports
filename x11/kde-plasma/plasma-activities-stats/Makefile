COMMENT =	statistics for the KDE Activity concept
DISTNAME =	plasma-activities-stats-${VERSION}
REVISION =	0

SHARED_LIBS +=  PlasmaActivitiesStats     0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF6ConfigCore PlasmaActivities Qt6Core
WANTLIB += Qt6DBus Qt6Sql m


BUILD_DEPENDS =	devel/boost \
		x11/qt6/qtdeclarative

LIB_DEPENDS =	devel/kf6/kconfig \
		x11/kde-plasma/plasma-activities>=${VERSION}

.include <bsd.port.mk>
