COMMENT =	jigsaw puzzle game
DISTNAME =	palapeli-${VERSION}
CATEGORIES =	games
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/games/palapeli

SHARED_LIBS +=  pala                      3.0 # 0.2

WANTLIB += ${COMPILER_LIBCXX} GL KDEGames6 KF6Archive KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n
WANTLIB += KF6IconThemes KF6ItemViews KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Notifications KF6Service
WANTLIB += KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Qml Qt6Svg Qt6Widgets Qt6Xml c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

RUN_DEPENDS =	misc/shared-mime-info

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kguiaddons \
		devel/kf6/kitemviews \
		devel/kf6/kiconthemes \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kdbusaddons \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		x11/kde-applications/libkdegames>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg

.include <bsd.port.mk>
