COMMENT =	miniature golf
DISTNAME =	kolf-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/kolf

SHARED_LIBS +=  kolfprivate               2.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} GL KDEGames6 KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n KF6IconThemes
WANTLIB += KF6JobWidgets KF6KIOCore KF6SonnetUi KF6TextWidgets
WANTLIB += KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Qml Qt6Widgets Qt6Xml c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	devel/kf6/kitemviews \
		devel/kf6/solid

RUN_DEPENDS =	devel/kf6/kitemviews \
		devel/kf6/solid

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kguiaddons \
		devel/kf6/kiconthemes \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/sonnet \
		x11/kde-applications/libkdegames>=${VERSION} \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
