COMMENT =	audio player with QML and KDE Plasma integration
DISTNAME =	elisa-${VERSION}
CATEGORIES =	audio
REVISION =	0

HOMEPAGE =	https://elisa.kde.org/

SHARED_LIBS +=  elisaLib                  4.0 # 0.1

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6Codecs KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6FileMetaData
WANTLIB += KF6GuiAddons KF6I18n KF6IconThemes KF6ItemViews KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Service KF6Solid KF6WidgetsAddons KF6XmlGui Qt6Concurrent
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Multimedia Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6Quick Qt6QuickControls2 Qt6Sql Qt6Widgets
WANTLIB += Qt6Xml c m vlc

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	devel/kf6/kirigami \
		graphics/kirigami-addons \
		devel/kf6/qqc2-desktop-style

RUN_DEPENDS =	devel/kf6/kirigami \
		graphics/kirigami-addons \
		devel/kf6/qqc2-desktop-style

LIB_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kfilemetadata \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kguiaddons \
		devel/kf6/kcodecs \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/vlc

.include <bsd.port.mk>
