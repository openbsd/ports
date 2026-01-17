USE_NOBTCFI-aarch64 =	Yes# fortran

COMMENT =	planetarium simulator for KDE

V =		3.8.0
DISTNAME =	kstars-${V}
EPOCH =		0
REVISION =	0

CATEGORIES =	astro education

HOMEPAGE =	https://edu.kde.org/kstars/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6Bookmarks KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6GuiAddons KF6I18n KF6ItemViews KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets
WANTLIB += KF6NewStuffCore KF6NewStuffWidgets KF6Notifications
WANTLIB += KF6NotifyConfig KF6Plotting KF6Service KF6Solid KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Concurrent Qt6Core Qt6DBus Qt6DataVisualization
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6PrintSupport Qt6Qml
WANTLIB += Qt6Quick Qt6Sql Qt6Svg Qt6SvgWidgets Qt6WebSockets
WANTLIB += Qt6Widgets Qt6Xml c cfitsio curl gsl gslcblas indiclient
WANTLIB += m nova opencv_calib3d opencv_core opencv_features2d
WANTLIB += opencv_flann opencv_imgcodecs opencv_imgproc opencv_photo
WANTLIB += qt6keychain raw stellarsolver6 wcs z

SITES =			${SITE_KDE:=stable/kstars/${V}/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/kf6

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf6/kdoctools \
			math/eigen3 \
			x11/xplanet

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf6/breeze-icons \
			devel/kf6/kdoctools \
			devel/indi,-main \
			x11/gtk+4,-guic \
			x11/xplanet

LIB_DEPENDS =		astro/libnova \
			astro/stellarsolver>=2.7 \
			astro/wcslib \
			devel/gsl \
			devel/indi,-libs \
			devel/kf6/attica \
			devel/kf6/kbookmarks \
			devel/kf6/kcolorscheme \
			devel/kf6/kcompletion \
			devel/kf6/kconfig \
			devel/kf6/kconfigwidgets \
			devel/kf6/kcoreaddons \
			devel/kf6/kguiaddons \
			devel/kf6/ki18n \
			devel/kf6/kio \
			devel/kf6/kitemviews\
			devel/kf6/kjobwidgets \
			devel/kf6/knewstuff \
			devel/kf6/knotifications \
			devel/kf6/knotifyconfig \
			devel/kf6/kplotting \
			devel/kf6/kservice \
			devel/kf6/kwidgetsaddons \
			devel/kf6/kxmlgui \
			devel/kf6/solid \
			graphics/libraw \
			graphics/opencv \
			math/cfitsio \
			net/curl \
			security/qtkeychain,qt6 \
			x11/qt6/qtdatavis3d \
			x11/qt6/qtdeclarative \
			x11/qt6/qtsvg \
			x11/qt6/qtwebsockets

CONFIGURE_ARGS =	-DBUILD_WITH_QT6=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
