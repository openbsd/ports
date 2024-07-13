COMMENT =	KDE dialog boxes from shell scripts
DISTNAME =	kdialog-${VERSION}
CATEGORIES =	x11

WANTLIB += ${COMPILER_LIBCXX} GL KF6Completion KF6ConfigCore KF6CoreAddons
WANTLIB += KF6DBusAddons KF6GuiAddons KF6I18n KF6IconThemes KF6IconWidgets
WANTLIB += KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Notifications
WANTLIB += KF6Service KF6Solid KF6SonnetUi KF6TextWidgets KF6WidgetsAddons
WANTLIB += KF6WindowSystem Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets
WANTLIB += X11 c m

MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DESKTOP_FILE = yes

LIB_DEPENDS =	devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/solid \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/sonnet

.include <bsd.port.mk>
