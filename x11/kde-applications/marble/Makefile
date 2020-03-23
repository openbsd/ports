# $OpenBSD: Makefile,v 1.9 2020/03/23 18:01:28 rsadowski Exp $

COMMENT =	virtual globe and world atlas
DISTNAME =	marble-${VERSION}
PKGNAME =	marble-kf5-${VERSION}
CATEGORIES =	geo

HOMEPAGE =	https://marble.kde.org/


SHARED_LIBS +=  astro                     1.0 # 0.17
SHARED_LIBS +=  marblewidget-qt5          1.0 # 0.28

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5I18n KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOWidgets KF5NewStuff KF5NewStuffCore KF5Package
WANTLIB += KF5Parts KF5Plasma KF5Runner KF5Service KF5SonnetUi
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport
WANTLIB += Qt5Qml Qt5Quick Qt5SerialPort Qt5Sql Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml c gps m shp z

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications \
		multimedia/phonon

BUILD_DEPENDS =	x11/qt5/qtquickcontrols \
		devel/protobuf \
		devel/kf5/kwallet

RUN_DEPENDS =	x11/qt5/qtquickcontrols \
		misc/shared-mime-info \
		devel/kf5/kwallet

LIB_DEPENDS =	devel/kf5/attica \
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

post-extract:
	rm ${WRKSRC}/data/mwdbii/{PISLAND.PNT,PLAKE.PNT}.orig

.include <bsd.port.mk>
