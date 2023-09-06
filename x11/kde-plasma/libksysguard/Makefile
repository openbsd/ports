COMMENT =	KSysGuard library
DISTNAME =	libksysguard-${VERSION}

SHARED_LIBS +=  KSysGuardFormatter         0.0 # 5.22.5
SHARED_LIBS +=  KSysGuardSensorFaces       0.0 # 5.22.5
SHARED_LIBS +=  KSysGuardSensors           0.0 # 5.22.5
SHARED_LIBS +=  KSysGuardSystemStats       0.0 # 5.22.5
SHARED_LIBS +=  ksgrd                      0.0 # 5.22.5
SHARED_LIBS +=  ksignalplotter             0.0 # 5.22.5
SHARED_LIBS +=  lsofui                     0.0 # 5.22.5
SHARED_LIBS +=  processcore                0.0 # 5.22.5
SHARED_LIBS +=  processui                  0.0 # 5.22.5

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigQml
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5GlobalAccel KF5I18n
WANTLIB += KF5IconThemes KF5JobWidgets KF5KIOCore KF5KIOGui KF5Package
WANTLIB += KF5Service KF5Solid KF5WidgetsAddons KF5WindowSystem
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Positioning
WANTLIB += Qt5PrintSupport Qt5Qml Qt5QmlModels Qt5Quick Qt5WebChannel
WANTLIB += Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml SM X11 XRes Xext c m z

MODKDE5_TRANSLATIONS =	Yes

RUN_DEPENDS =	x11/dbus,-suid

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kglobalaccel \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kpackage \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/solid \
		x11/qt5/qtdeclarative \
		x11/qt5/qtwebengine \
		x11/qt5/qtx11extras

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
