COMMENT =	KDE menu editor for plasma workspaces
DISTNAME =	kmenuedit-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6DBusAddons KF6GlobalAccel KF6I18n KF6IconThemes
WANTLIB += KF6IconWidgets KF6ItemViews KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Service KF6Solid KF6SonnetCore
WANTLIB += KF6SonnetUi KF6WidgetsAddons KF6WindowSystem KF6XmlGui
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets Qt6Xml
WANTLIB += X11 c m

MODKDE5_TRANSLATIONS = Yes
MODKDE5_DOCS = Yes
MODKDE5_ICON_CACHE = Yes

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf6/kcompletion \
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
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
