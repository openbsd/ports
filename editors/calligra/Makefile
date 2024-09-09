COMMENT =	K Desktop Environment, office suite

HOMEPAGE =	https://www.calligra.org

DISTNAME =	calligra-4.0.1

CATEGORIES =	editors

SHARED_LIBS =   RtfReader                 52.0 # 0.0
SHARED_LIBS +=  basicflakes               51.0 # 0.0
SHARED_LIBS +=  calligrasheetscommon      52.0 # 9.0
SHARED_LIBS +=  calligrasheetsodf         52.0 # 9.0
SHARED_LIBS +=  calligrastageprivate      52.0 # 0.0
SHARED_LIBS +=  flake                     52.0 # 0.0
SHARED_LIBS +=  karboncommon              51.0 # 0.0
SHARED_LIBS +=  karbonui                  52.0 # 0.0
SHARED_LIBS +=  komain                    53.0 # 0.0
SHARED_LIBS +=  komsooxml                 52.0 # 13.0
SHARED_LIBS +=  koodf                     52.0 # 0.0
SHARED_LIBS +=  koodf2                    52.0 # 13.0
SHARED_LIBS +=  koodfreader               51.0 # 13.0
SHARED_LIBS +=  kopageapp                 52.0 # 0.0
SHARED_LIBS +=  koplugin                  51.0 # 0.0
SHARED_LIBS +=  kotext                    53.0 # 0.0
SHARED_LIBS +=  kotextlayout              52.0 # 13.0
SHARED_LIBS +=  kovectorimage             52.0 # 13.0
SHARED_LIBS +=  koversion                 1.0 # 14.0
SHARED_LIBS +=  kowidgets                 52.0 # 0.0
SHARED_LIBS +=  kowidgetutils             52.0 # 0.0
SHARED_LIBS +=  kowv2                     52.0 # 0.0
SHARED_LIBS +=  kundo2                    53.0 # 0.0
SHARED_LIBS +=  pigmentcms                51.0 # 0.0
SHARED_LIBS +=  wordsprivate              16.0 # 1.0
SHARED_LIBS +=  koformula                 16.0 # 1.0
SHARED_LIBS +=  kostore                   17.0 # 1.0
SHARED_LIBS +=  gemini                    1.0 # 16.0
# 4.0.0
SHARED_LIBS +=  autocorrection            0.0 # 0.0
SHARED_LIBS +=  braindumpcore             0.0 # 0.0
SHARED_LIBS +=  calligrasheetscore        0.0 # 0.0
SHARED_LIBS +=  calligrasheetsengine      0.0 # 0.0
SHARED_LIBS +=  calligrasheetspartlib     0.0 # 0.0
SHARED_LIBS +=  calligrasheetsui          0.0 # 0.0
SHARED_LIBS +=  kookularGenerator_odp     0.0 # 0.0
SHARED_LIBS +=  kookularGenerator_odt     0.0 # 0.0

DIST_SUBDIR =	kde

SITES =		${SITE_KDE:=stable/calligra/}
EXTRACT_SUFX =		.tar.xz

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE =	Yes

DPB_PROPERTIES =	parallel

WANTLIB += ${COMPILER_LIBCXX} GL Imath-3_1 KChart6 KF6Archive
WANTLIB += KF6Bookmarks KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6GuiAddons KF6I18n KF6IconThemes KF6IconWidgets
WANTLIB += KF6ItemViews KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6KIOCore KF6KIOFileWidgets KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Notifications KF6NotifyConfig KF6Service
WANTLIB += KF6Solid KF6SonnetCore KF6SonnetUi KF6TextWidgets KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui Okular6Core Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6QuickControls2 Qt6Sql
WANTLIB += Qt6Svg Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml X11 c crypto fontconfig freetype
WANTLIB += gsl gslcblas lcms2 m phonon4qt6 phonon4qt6experimental
WANTLIB += poppler-qt6 qt6keychain ssl z

MODULES =	x11/kde

BUILD_DEPENDS =	devel/boost \
		devel/gettext,-tools \
		devel/kf6/kdoctools \
		devel/kf6/kparts \
		devel/kf6/threadweaver \
		math/eigen3 \
		productivity/librcps

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gettext,-runtime \
		devel/kf6/ktexteditor \
		devel/kf6/kparts \
		misc/shared-mime-info \
		productivity/librcps \
		x11/gtk+4,-guic

LIB_DEPENDS =	devel/gsl \
		devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		multimedia/phonon,qt6 \
		graphics/kdiagram-qt6 \
		graphics/lcms2 \
		math/imath \
		print/poppler,-qt6 \
		security/qtkeychain,qt6 \
		x11/kde-applications/okular \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtsvg \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

# Stuff we don't have ATM. Do not bother about CreateResources, it's
# pure optional run-time dependency.
CONFIGURE_ARGS +=	-DWITH_Cauchy=OFF \
			-DWITH_LibEtonyek=OFF \
			-DWITH_LibOdfGen=OFF \
			-DWITH_LibVisio=OFF \
			-DWITH_LibWpg=OFF \
			-DWITH_LibWps=OFF \
			-DWITH_Spnav=OFF \

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_KF6Akonadi=ON

.include <bsd.port.mk>
