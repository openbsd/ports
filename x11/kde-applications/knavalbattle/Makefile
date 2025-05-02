COMMENT =	battle ship game
DISTNAME =	knavalbattle-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/knavalbattle

WANTLIB += ${COMPILER_LIBCXX} GL KDEGames6 KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6DNSSD KF6GuiAddons KF6I18n
WANTLIB += KF6SonnetUi KF6TextWidgets KF6WidgetsAddons KF6XmlGui
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Qml Qt6Widgets
WANTLIB += Qt6Xml c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kguiaddons \
		devel/kf6/kdnssd \
		devel/kf6/ki18n \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/sonnet \
		x11/kde-applications/libkdegames>=${VERSION} \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
