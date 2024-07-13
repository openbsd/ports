COMMENT =	graphical timer based task execution for KDE
DISTNAME =	ktimer-${VERSION}
CATEGORIES =	x11 sysutils

HOMEPAGE =	https://kde.org/applications/utilities/org.kde.ktimer

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6DBusAddons KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Notifications KF6Service KF6Solid
WANTLIB += KF6StatusNotifierItem KF6WidgetsAddons Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Widgets c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	devel/kf6/kitemviews \
		devel/kf6/kxmlgui

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/kwidgetsaddons \
		devel/kf6/solid

.include <bsd.port.mk>
