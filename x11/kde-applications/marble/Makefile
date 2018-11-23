# $OpenBSD: Makefile,v 1.3 2018/11/23 12:49:29 rsadowski Exp $

COMMENT =	virtual globe and world atlas
DISTNAME =	marble-${VERSION}
PKGNAME =	marble-kf5-${VERSION}
CATEGORIES =	geo
REVISION =	1

HOMEPAGE =	https://marble.kde.org/

KDE5 =		Yes

SHARED_LIBS +=  astro                     0.0 # 0.17
SHARED_LIBS +=  marblewidget-qt5          0.0 # 0.28

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5NewStuff KF5NewStuffCore KF5Package KF5Parts KF5Plasma
WANTLIB += KF5Runner KF5Service KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5Quick Qt5SerialPort
WANTLIB += Qt5Sql Qt5Svg Qt5WebKit Qt5WebKitWidgets Qt5Widgets
WANTLIB += Qt5Xml c gps m opencv_core opencv_highgui opencv_imgproc
WANTLIB += shp z

MODULES =	multimedia/phonon

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools \
		devel/protobuf \
		devel/kf5/kwallet

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/desktop-file-utils \
		misc/shared-mime-info \
		devel/kf5/kwallet \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/knewstuff \
		devel/kf5/kpackage \
		devel/kf5/kparts \
		devel/kf5/krunner \
		devel/kf5/ktextwidgets \
		devel/shapelib \
		graphics/opencv \
		x11/qt5/qtwebkit \
		x11/qt5/qtlocation \
		x11/qt5/qtserialport \
		misc/gpsd,-main

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_libwlocate=OFF \
			-DBUILD_MARBLE_TOOLS=ON \
			-DBUILD_MARBLE_EXAMPLES=ON \
			-DMOBILE=OFF \
			-DPhonon4Qt5_INCLUDE_DIR="${LOCALBASE}/include/phonon4qt5/"

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
