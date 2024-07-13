COMMENT =	KSysGuard library
DISTNAME =	libksysguard-${VERSION}

SHARED_LIBS +=  KSysGuardFormatter         1.0 # 5.22.5
SHARED_LIBS +=  KSysGuardSensorFaces       1.0 # 5.22.5
SHARED_LIBS +=  KSysGuardSensors           1.0 # 5.22.5
SHARED_LIBS +=  KSysGuardSystemStats       1.0 # 5.22.5
SHARED_LIBS +=  processcore                1.0 # 5.22.5

WANTLIB += ${COMPILER_LIBCXX} GL KF6AuthCore KF6ConfigCore KF6ConfigGui
WANTLIB += KF6ConfigQml KF6CoreAddons KF6I18n KF6Package KF6Service
WANTLIB += KF6Solid Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick c m z

MODKDE_TRANSLATIONS =	Yes

RUN_DEPENDS =	devel/kf6/knewstuff \
		devel/kf6/kcompletion \
		x11/dbus,-suid

BUILD_DEPENDS =	devel/kf6/knewstuff \
		devel/kf6/kcompletion

LIB_DEPENDS =	devel/kf6/kauth \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kpackage \
		devel/kf6/kservice \
		devel/kf6/solid \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
