COMMENT =	KDE image viewer
DISTNAME =	gwenview-${VERSION}
CATEGORIES =	graphics x11

SHARED_LIBS +=  gwenviewlib               60.0 # 4.97

WANTLIB += ${COMPILER_LIBCXX} GL KDcrawQt6 KF6Baloo KF6Bookmarks
WANTLIB += KF6ColorScheme KF6Completion KF6ConfigCore KF6ConfigGui
WANTLIB += KF6ConfigWidgets KF6CoreAddons KF6FileMetaData KF6GuiAddons
WANTLIB += KF6I18n KF6IconThemes KF6IconWidgets KF6ItemModels
WANTLIB += KF6ItemViews KF6JobWidgets KF6KIOCore KF6KIOFileWidgets
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Notifications KF6Parts KF6Purpose
WANTLIB += KF6PurposeWidgets KF6Service KF6Solid KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui PlasmaActivities Qt6Concurrent
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6PrintSupport Qt6Svg Qt6SvgWidgets Qt6WaylandClient
WANTLIB += Qt6Widgets Qt6Xml X11 c cfitsio exiv2 jpeg kImageAnnotator
WANTLIB += lcms2 m phonon4qt6 png tiff wayland-client wayland-cursor
WANTLIB += xkbcommon z

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	wayland/wayland-protocols \
		wayland/plasma-wayland-protocols

RUN_DEPENDS =	devel/kf6/kfilemetadata \
		x11/kde-applications/ffmpegthumbs>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kdesdk-thumbnailers>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kf6-kio-extras>=${MODKDE_GEAR_VERSION}

LIB_DEPENDS =	devel/kf6/baloo \
		devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kfilemetadata \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kparts \
		devel/kf6/kservice\
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/purpose \
		devel/kf6/solid \
		graphics/exiv2 \
		graphics/jpeg \
		graphics/kimageannotator>=0.7 \
		graphics/lcms2 \
		graphics/png \
		graphics/tiff \
		math/cfitsio \
		multimedia/phonon,qt6 \
		wayland/wayland \
		x11/kde-applications/kf6-libkdcraw>=${MODKDE_GEAR_VERSION} \
		x11/kde-plasma/plasma-activities \
		x11/qt6/qtsvg \
		x11/qt6/qtwayland \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
