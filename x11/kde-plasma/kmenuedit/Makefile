COMMENT =	KDE menu editor for plasma workspaces
DISTNAME =	kmenuedit-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6GlobalAccel KF6GuiAddons
WANTLIB += KF6I18n KF6IconThemes KF6IconWidgets KF6ItemViews KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Service KF6Solid
WANTLIB += KF6SonnetCore KF6SonnetUi KF6WidgetsAddons KF6WindowSystem
WANTLIB += KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets
WANTLIB += Qt6Xml X11 c m

MODKDE_TRANSLATIONS = Yes
MODKDE_DOCS = Yes
MODKDE_ICON_CACHE = Yes

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf6/kcrash \
		devel/kf6/kcompletion \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/kglobalaccel \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kguiaddons \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
