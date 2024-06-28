COMMENT =	various components needed to run a Plasma-based environment
DISTNAME =	plasma-workspace-${VERSION}

SHARED_LIBS +=  colorcorrect              1.0 # 0.0
SHARED_LIBS +=  kfontinst                 1.0 # 0.0
SHARED_LIBS +=  kfontinstui               1.0 # 0.0
SHARED_LIBS +=  notificationmanager       1.0 # 0.0
SHARED_LIBS +=  taskmanager               1.0 # 0.0
SHARED_LIBS +=  weather_ion               1.0 # 0.0
SHARED_LIBS +=  kmpris                    0.0 # 0.0
SHARED_LIBS +=  kworkspace6               0.0 # 0.0
SHARED_LIBS +=  batterycontrol            0.0 # 0.0

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
WANTLIB += KF6UnitConversion KF6UserFeedbackCore KF6Wallet KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui KScreenLocker KSysGuardFormatter
WANTLIB += KSysGuardSensorFaces KSysGuardSensors KWaylandClient
WANTLIB += LayerShellQtInterface Plasma Plasma5Support PlasmaActivities
WANTLIB += PlasmaActivitiesStats PlasmaQuick QCoro6Core QCoro6DBus
WANTLIB += Qt6Concurrent Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6PrintSupport Qt6Qml Qt6QmlModels Qt6Quick Qt6QuickWidgets
WANTLIB += Qt6Sql Qt6Svg Qt6WaylandClient Qt6Widgets Qt6Xml SM
WANTLIB += X11 Xau Xcursor Xext Xfixes Xft Xi Xrender Xtst c canberra
WANTLIB += fontconfig freetype icui18n icuuc m phonon4qt6 processcore
WANTLIB += qalculate udev wayland-client wayland-cursor xcb xcb-composite
WANTLIB += xcb-damage xcb-image xcb-randr xcb-render xcb-shape
WANTLIB += xcb-shm xcb-util xcb-xfixes xkbcommon z

MODKDE5_TRANSLATIONS = Yes
MODKDE5_ICON_CACHE = Yes
MODKDE5_DOCS = Yes

BUILD_DEPENDS =	x11/kde-plasma/kwin>=${VERSION} \
		graphics/kirigami-addons \
		x11/xdotool \
		devel/kf6/kquickcharts

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/kquickcharts \
		graphics/kirigami-addons \
		multimedia/phonon-backend/vlc,qt6 \
		sysutils/coreutils \
		x11/dbus,-suid \
		x11/kde-plasma/kwin>=${VERSION}

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
		devel/kf6/kidletime \
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
		devel/kf6/kunitconversion \
		devel/kf6/kuserfeedback \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/prison \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		devel/qcoro,qt6 \
		math/libqalculate \
		multimedia/phonon,qt6 \
		sysutils/libudev-openbsd \
		wayland/wayland \
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
		x11/qt6/qtsvg \
		x11/qt6/qtwayland \
		x11/xkbcommon

# XXX x11/kde-plasma/kpipewire>=${VERSION}

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
