COMMENT =	KDE menu editor for plasma workspaces
DISTNAME =	kmenuedit-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5GlobalAccel KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Service KF5Solid KF5SonnetCore KF5SonnetUi KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml X11 c m

MODKDE5_TRANSLATIONS = Yes
MODKDE5_DOCS = Yes
MODKDE5_ICON_CACHE = Yes

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kglobalaccel \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
