USE_NOBTCFI-aarch64 =	Yes# fortran

COMMENT =	planetarium simulator for KDE

V =		3.7.7
DISTNAME =	kstars-${V}
EPOCH =		0

CATEGORIES =	astro education

HOMEPAGE =	https://edu.kde.org/kstars/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5I18n KF5ItemViews
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOFileWidgets KF5KIOGui
WANTLIB += KF5KIOWidgets KF5NewStuff KF5NewStuffCore KF5Notifications
WANTLIB += KF5NotifyConfig KF5Plotting KF5Service KF5Solid KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5DataVisualization Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5Sql Qt5Svg Qt5WebSockets
WANTLIB += Qt5Widgets Qt5Xml X11 c cfitsio curl gsl gslcblas m
WANTLIB += nova opencv_core opencv_highgui opencv_imgproc qt5keychain
WANTLIB += raw stellarsolver wcs z

SITES =			${SITE_KDE:=stable/kstars/${V}/}

MODULES =		devel/kf5

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf5/kdoctools \
			math/eigen3 \
			x11/qt5/qtquickcontrols \
			x11/xplanet

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf6/breeze-icons \
			devel/kf5/kdoctools \
			x11/gtk+4,-guic \
			x11/qt5/qtquickcontrols \
			x11/xplanet

LIB_DEPENDS =		astro/wcslib \
			astro/libnova \
			astro/stellarsolver \
			devel/gsl \
			devel/kf5/attica \
			devel/kf5/kauth \
			devel/kf5/kbookmarks \
			devel/kf5/kcodecs \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/ki18n \
			devel/kf5/kio \
			devel/kf5/kitemviews\
			devel/kf5/kjobwidgets \
			devel/kf5/knewstuff \
			devel/kf5/knotifications \
			devel/kf5/knotifyconfig \
			devel/kf5/kplotting \
			devel/kf5/kservice \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
			devel/kf5/kxmlgui \
			devel/kf5/solid \
			graphics/libraw \
			graphics/opencv \
			math/cfitsio \
			net/curl \
			security/qtkeychain \
			x11/qt5/qtdatavis3d \
			x11/qt5/qtdeclarative \
			x11/qt5/qtsvg \
			x11/qt5/qtwebsockets

# not ported
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_INDI=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
