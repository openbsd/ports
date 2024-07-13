COMMENT =	adaptation of clickomania game
DISTNAME =	klickety-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/klickety

WANTLIB += ${COMPILER_LIBCXX} GL KDEGames6 KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6I18n KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Service KF6Solid KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Qml
WANTLIB += Qt6Widgets Qt6Xml c m

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
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		x11/kde-applications/libkdegames>=${MODKDE_VERSION} \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
