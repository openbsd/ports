UNLINKED=kf6
COMMENT =	core components for the KDE Activity concept
DISTNAME =	plasma-activities-${VERSION}

SHARED_LIBS +=  PlasmaActivities          0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6CoreAddons Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6Sql c m

BUILD_DEPENDS =	devel/boost \
		devel/gettext,-tools

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
