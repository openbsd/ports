COMMENT =	KDE Plasma add-ons
DISTNAME =	kdeplasma-addons-${VERSION}
PKGNAME =	kf6-kdeplasma-addons-${VERSION}
REVISION =	1

SHARED_LIBS +=  plasmapotdprovidercore    1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarEvents KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6GlobalAccel KF6Holidays KF6I18n KF6JobWidgets
WANTLIB += KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Notifications KF6Package
WANTLIB += KF6Runner KF6Service KF6Solid KF6SonnetCore KF6UnitConversion
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui Plasma Plasma5Support
WANTLIB += PlasmaQuick Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Positioning Qt6Qml Qt6QmlModels Qt6Quick Qt6WebChannel
WANTLIB += Qt6WebChannelQuick Qt6WebEngineCore Qt6WebEngineQuick
WANTLIB += Qt6Widgets Qt6Xml X11 icui18n icuuc m

MODKDE5_TRANSLATIONS =	Yes
MODKDE5_ICON_CACHE = Yes

BUILD_DEPENDS =	archivers/gtar \
		devel/kf6/kitemmodels \
		devel/kf6/purpose \
		devel/kf6/knewstuff \
		graphics/kirigami-addons>=1.0.0

RUN_DEPENDS =	devel/kf6/kitemmodels \
		graphics/kirigami-addons>=1.0.0

LIB_DEPENDS =	devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdeclarative \
		devel/kf6/kglobalaccel \
		devel/kf6/kholidays \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kpackage \
		devel/kf6/krunner \
		devel/kf6/kservice \
		devel/kf6/kunitconversion \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		x11/kde-plasma/libplasma>=${VERSION} \
		x11/kde-plasma/plasma5support>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

CFLAGS +=	-I${LOCALBASE}/include/
CXXFLAGS +=	-I${LOCALBASE}/include/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-extract:
	@ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
