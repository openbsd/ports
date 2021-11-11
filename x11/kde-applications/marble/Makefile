# $OpenBSD: Makefile,v 1.23 2021/11/11 16:22:10 rsadowski Exp $

COMMENT =	virtual globe and world atlas
DISTNAME =	marble-${VERSION}
PKGNAME =	marble-kf5-${VERSION}
CATEGORIES =	geo
REVISION =	0

HOMEPAGE =	https://marble.kde.org/

SHARED_LIBS +=  astro                     2.0 # 0.17
SHARED_LIBS +=  marblewidget-qt5          3.1 # 0.28
SHARED_LIBS +=  marbledeclarative         1.1 # 0.28

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5I18n KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOGui KF5KIOWidgets KF5NewStuff KF5NewStuffCore
WANTLIB += KF5Package KF5Parts KF5Plasma KF5Runner KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5SerialPort Qt5Sql Qt5Svg Qt5WebChannel
WANTLIB += Qt5WebEngine Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets
WANTLIB += Qt5Xml X11 c gps m phonon4qt5 protobuf shp z

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

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
		devel/protobuf \
		devel/shapelib \
		misc/gpsd \
		multimedia/phonon \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtserialport \
		x11/qt5/qtsvg \
		x11/qt5/qtwebengine

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_libwlocate=ON \
			-DBUILD_MARBLE_TOOLS=ON \
			-DBUILD_MARBLE_EXAMPLES=OFF \
			-DMOBILE=OFF

TEST_IS_INTERACTIVE =	X11

SUBST_VARS +=	LIBmarblewidget-qt5_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/lib/marble/CMakeLists.txt

post-extract:
	rm ${WRKSRC}/data/mwdbii/{PISLAND.PNT,PLAKE.PNT}.orig

.include <bsd.port.mk>
