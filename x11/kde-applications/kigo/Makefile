COMMENT =	Go board game
DISTNAME =	kigo-${VERSION}
CATEGORIES =	games
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/games/kigo

WANTLIB += ${COMPILER_LIBCXX} GL KDEGames6 KF6Attica KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n
WANTLIB += KF6IconThemes KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6NewStuffCore KF6NewStuffWidgets KF6Service KF6SonnetUi
WANTLIB += KF6TextWidgets KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Qml Qt6Svg Qt6Widgets Qt6Xml c
WANTLIB += m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

RUN_DEPENDS =	games/gnugo

LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kiconthemes \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kguiaddons \
		devel/kf6/knewstuff \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/sonnet \
		x11/kde-applications/libkdegames>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg

.include <bsd.port.mk>
