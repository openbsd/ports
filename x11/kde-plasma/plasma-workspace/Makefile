COMMENT =	various components needed to run a Plasma-based environment
DISTNAME =	plasma-workspace-${VERSION}

SHARED_LIBS +=  colorcorrect              0.0 # 0.0
SHARED_LIBS +=  kfontinst                 0.0 # 0.0
SHARED_LIBS +=  kfontinstui               0.0 # 0.0
SHARED_LIBS +=  kworkspace5               0.0 # 0.0
SHARED_LIBS +=  notificationmanager       0.0 # 0.0
SHARED_LIBS +=  taskmanager               0.0 # 0.0
SHARED_LIBS +=  weather_ion               0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE KF5Activities KF5ActivitiesStats
WANTLIB += KF5Archive KF5Attica KF5Auth KF5AuthCore KF5Baloo KF5Bookmarks
WANTLIB += KF5CalendarEvents KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5Declarative KF5FileMetaData KF5GlobalAccel
WANTLIB += KF5GuiAddons KF5Holidays KF5I18n KF5IconThemes KF5IdleTime
WANTLIB += KF5ItemModels KF5ItemViews KF5JobWidgets KF5KCMUtils
WANTLIB += KF5KExiv2 KF5KIOCore KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets
WANTLIB += KF5NewStuff KF5NewStuffCore KF5NewStuffWidgets KF5Notifications
WANTLIB += KF5NotifyConfig KF5Package KF5Parts KF5People KF5PeopleWidgets
WANTLIB += KF5Plasma KF5PlasmaQuick KF5Prison KF5QuickAddons KF5Runner
WANTLIB += KF5Screen KF5Service KF5Solid KF5SonnetUi KF5SyntaxHighlighting
WANTLIB += KF5TextEditor KF5TextWidgets KF5UnitConversion KF5Wallet
WANTLIB += KF5WaylandClient KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += KScreenLocker KSysGuardFormatter KSysGuardSensorFaces
WANTLIB += KSysGuardSensors KUserFeedbackCore LayerShellQtInterface
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickWidgets Qt5Sql
WANTLIB += Qt5Svg Qt5WaylandClient Qt5Widgets Qt5X11Extras Qt5Xml
WANTLIB += SM X11 Xau Xcursor Xext Xfixes Xft Xi Xrender Xtst
WANTLIB += c fontconfig freetype icui18n icuuc ksgrd m phonon4qt5
WANTLIB += phonon4qt5experimental processcore processui qalculate
WANTLIB += wayland-client xcb xcb-composite xcb-damage xcb-image
WANTLIB += xcb-randr xcb-render xcb-shape xcb-shm xcb-util xcb-xfixes
WANTLIB += xkbcommon z

MODKDE5_TRANSLATIONS = Yes
MODKDE5_ICON_CACHE = Yes
MODKDE5_DOCS = Yes

BUILD_DEPENDS =		x11/kde-plasma/kwin \
			devel/kf5/kquickcharts

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf5/kquickcharts \
			multimedia/phonon-backend/gstreamer \
			sysutils/coreutils \
			x11/dbus,-suid \
			x11/kde-plasma/kwin

LIB_DEPENDS =		devel/kf5/attica \
			devel/kf5/baloo \
			devel/kf5/baloo \
			devel/kf5/kactivities \
			devel/kf5/kactivities-stats \
			devel/kf5/karchive \
			devel/kf5/kauth \
			devel/kf5/kbookmarks \
			devel/kf5/kcmutils \
			devel/kf5/kcodecs \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/kdbusaddons \
			devel/kf5/kdbusaddons \
			devel/kf5/kdeclarative \
			devel/kf5/kfilemetadata \
			devel/kf5/kglobalaccel \
			devel/kf5/kguiaddons \
			devel/kf5/kholidays \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kidletime \
			devel/kf5/kidletime \
			devel/kf5/kio \
			devel/kf5/kitemmodels \
			devel/kf5/kitemviews \
			devel/kf5/kjobwidgets \
			devel/kf5/knewstuff \
			devel/kf5/knotifications \
			devel/kf5/knotifyconfig \
			devel/kf5/knotifyconfig \
			devel/kf5/kpackage \
			devel/kf5/kparts \
			devel/kf5/kpeople \
			devel/kf5/kpeople \
			devel/kf5/krunner \
			devel/kf5/kservice \
			devel/kf5/ktexteditor \
			devel/kf5/ktextwidgets \
			devel/kf5/kunitconversion \
			devel/kf5/kunitconversion \
			devel/kf5/kwallet \
			devel/kf5/kwayland \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
			devel/kf5/kxmlgui \
			devel/kf5/plasma-framework \
			devel/kf5/prison \
			devel/kf5/solid \
			devel/kf5/sonnet \
			devel/kf5/syntax-highlighting \
			math/libqalculate \
			productivity/kuserfeedback \
			multimedia/phonon \
			x11/qt5/qtdeclarative \
			x11/kde-applications/libkexiv2 \
			x11/kde-plasma/kscreenlocker \
			x11/kde-plasma/libkscreen \
			x11/kde-plasma/libksysguard

CONFIGURE_ARGS = \
	-DCMAKE_DISABLE_FIND_PACKAGE_KF5NetworkManagerQt=Yes

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

CFLAGS +=		-I${LOCALBASE}/include/
CXXFLAGS +=		-I${LOCALBASE}/include/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA} ${FILESDIR}/kde-puffy.svgz \
		${PREFIX}/share/plasma/look-and-feel/org.kde.breeze.desktop/contents/splash/images/

.include <bsd.port.mk>
