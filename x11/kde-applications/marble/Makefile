# $OpenBSD: Makefile,v 1.8 2019/06/10 12:24:21 rsadowski Exp $

COMMENT =	virtual globe and world atlas
DISTNAME =	marble-${VERSION}
PKGNAME =	marble-kf5-${VERSION}
CATEGORIES =	geo
REVISION =	2

HOMEPAGE =	https://marble.kde.org/


SHARED_LIBS +=  astro                     0.0 # 0.17
SHARED_LIBS +=  marblewidget-qt5          0.0 # 0.28

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5NewStuff KF5NewStuffCore KF5Package KF5Parts KF5Plasma
WANTLIB += KF5Runner KF5Service KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5Quick Qt5SerialPort
WANTLIB += Qt5Sql Qt5Svg Qt5Widgets Qt5Xml c gps m shp z

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications \
		multimedia/phonon

BUILD_DEPENDS +=x11/qt5/qtquickcontrols \
		devel/protobuf \
		devel/kf5/kwallet

RUN_DEPENDS +=	x11/qt5/qtquickcontrols \
		misc/shared-mime-info \
		devel/kf5/kwallet

LIB_DEPENDS +=	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/knewstuff \
		devel/kf5/kpackage \
		devel/kf5/kparts \
		devel/kf5/krunner \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/plasma-framework \
		devel/kf5/sonnet \
		devel/shapelib \
		misc/gpsd,-main \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtserialport \
		x11/qt5/qtsvg

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_libwlocate=ON \
			-DBUILD_MARBLE_TOOLS=ON \
			-DBUILD_MARBLE_EXAMPLES=OFF \
			-DMOBILE=OFF \
			-DPhonon4Qt5_INCLUDE_DIR="${LOCALBASE}/include/phonon4qt5/"

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
