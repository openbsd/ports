COMMENT =	various components needed to run a Plasma-based environment
DISTNAME =	plasma-workspace-${VERSION}
REVISION =	0

SHARED_LIBS +=  colorcorrect              1.0 # 0.0
SHARED_LIBS +=  kfontinst                 1.0 # 0.0
SHARED_LIBS +=  kfontinstui               1.0 # 0.0
SHARED_LIBS +=  notificationmanager       1.0 # 0.0
SHARED_LIBS +=  taskmanager               1.0 # 0.0
SHARED_LIBS +=  weather_ion               1.0 # 0.0
SHARED_LIBS +=  kmpris                    0.0 # 0.0
SHARED_LIBS +=  kworkspace6               0.0 # 0.0
SHARED_LIBS +=  batterycontrol            0.0 # 0.0
SHARED_LIBS +=  klipper                   0.0 # 0.0
SHARED_LIBS +=	klookandfeel              0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL ICE KExiv2Qt6 KF6Archive KF6Attica
WANTLIB += KF6AuthCore KF6Baloo KF6Bookmarks KF6CalendarEvents
WANTLIB += KF6ColorScheme KF6Completion KF6ConfigCore KF6ConfigGui
WANTLIB += KF6ConfigQml KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6FileMetaData KF6GlobalAccel KF6GuiAddons
WANTLIB += KF6Holidays KF6I18n KF6I18nLocaleData KF6IconThemes
WANTLIB += KF6IconWidgets KF6IdleTime KF6ItemModels KF6ItemViews
WANTLIB += KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6KIOCore KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets
WANTLIB += KF6NewStuffCore KF6NewStuffWidgets KF6Notifications
WANTLIB += KF6NotifyConfig KF6Package KF6Parts KF6Prison KF6Runner
WANTLIB += KF6Screen KF6Service KF6Solid KF6SonnetUi KF6StatusNotifierItem
WANTLIB += KF6Svg KF6SyntaxHighlighting KF6TextEditor KF6TextWidgets
WANTLIB += KF6UserFeedbackCore KF6Wallet KF6WidgetsAddons KF6WindowSystem
WANTLIB += KF6XmlGui KNightTime KScreenLocker KSysGuardFormatter
WANTLIB += KSysGuardSensorFaces KSysGuardSensors KWaylandClient
WANTLIB += LayerShellQtInterface Plasma Plasma5Support PlasmaActivities
WANTLIB += PlasmaActivitiesStats PlasmaQuick Qt6Concurrent Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Positioning
WANTLIB += Qt6PrintSupport Qt6Qml Qt6Quick Qt6QuickWidgets Qt6Sql
WANTLIB += Qt6Svg Qt6WaylandClient Qt6Widgets Qt6Xml SM X11 Xau
WANTLIB += Xcursor Xext Xfixes Xft Xi Xrender Xtst c canberra
WANTLIB += dbus-1 fontconfig freetype icui18n icuuc m phonon4qt6
WANTLIB += processcore qalculate udev wayland-client wayland-cursor
WANTLIB += xcb xcb-composite xcb-cursor xcb-damage xcb-image xcb-randr
WANTLIB += xcb-render xcb-shape xcb-shm xcb-util xcb-xfixes xkbcommon
WANTLIB += z

MODKDE_TRANSLATIONS = Yes
MODKDE_ICON_CACHE = Yes
MODKDE_DOCS = Yes

KDE_DEPENDS =	devel/kf6/kcodecs \
		devel/kf6/kded \
		devel/qcoro \
		wayland/plasma-wayland-protocols \
		wayland/wayland-protocols \
		x11/kde-plasma/knighttime>=${VERSION} \
		x11/kde-plasma/kwin>=${VERSION} \
		x11/kde-plasma/kglobalacceld>=${VERSION} \
		x11/kde-plasma/plasma-nano>=${VERSION} \
		x11/kde-applications/kf6-libkexiv2

BUILD_DEPENDS =	${KDE_DEPENDS} \
		devel/kf6/kquickcharts \
		graphics/kirigami-addons \
		x11/qt6/qtlocation \
		x11/xdotool

RUN_DEPENDS =	${KDE_DEPENDS} \
		devel/desktop-file-utils \
		devel/kf6/kquickcharts \
		graphics/kirigami-addons \
		multimedia/phonon-backend/vlc,qt6 \
		sysutils/coreutils \
		x11/dbus,-suid \
		x11/qt6/qtlocation

LIB_DEPENDS =	audio/libcanberra \
		devel/kf6/attica \
		devel/kf6/baloo \
		devel/kf6/karchive \
		devel/kf6/kauth \
		devel/kf6/kbookmarks \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kdeclarative \
		devel/kf6/kfilemetadata \
		devel/kf6/kglobalaccel \
		devel/kf6/kguiaddons \
		devel/kf6/kholidays \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kpackage \
		devel/kf6/kparts \
		devel/kf6/krunner \
		devel/kf6/kservice \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/ksvg \
		devel/kf6/ktexteditor \
		devel/kf6/ktextwidgets \
		devel/kf6/kuserfeedback \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/prison \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		math/libqalculate \
		multimedia/phonon,qt6 \
		sysutils/libudev-openbsd \
		textproc/icu4c \
		wayland/wayland \
		x11/dbus \
		x11/kde-applications/kf6-libkexiv2 \
		x11/kde-plasma/kscreenlocker>=${VERSION} \
		x11/kde-plasma/kwayland>=${VERSION} \
		x11/kde-plasma/layer-shell-qt>=${VERSION} \
		x11/kde-plasma/libkscreen>=${VERSION} \
		x11/kde-plasma/libksysguard>=${VERSION} \
		x11/kde-plasma/libplasma>=${VERSION} \
		x11/kde-plasma/plasma-activities-stats>=${VERSION} \
		x11/kde-plasma/plasma-activities>=${VERSION} \
		x11/kde-plasma/plasma5support>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning  \
		x11/qt6/qtsvg \
		x11/xkbcommon

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

CFLAGS +=		-I${LOCALBASE}/include/
CXXFLAGS +=		-I${LOCALBASE}/include/

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_AppStreamQt=ON

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA} ${FILESDIR}/kde-puffy.svgz \
		${PREFIX}/share/plasma/look-and-feel/org.kde.breeze.desktop/contents/splash/images/
# WIP
#	${MODPY_COMPILEALL} \
#		${PREFIX}/share/kconf_update/migrate-calendar-to-plugin-id.py

.include <bsd.port.mk>
