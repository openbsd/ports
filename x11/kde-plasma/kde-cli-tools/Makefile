COMMENT =	KDE krameworks 5 tools

DISTNAME =	kde-cli-tools-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5I18n KF5IconThemes
WANTLIB += KF5JobWidgets KF5KCMUtils KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Parts KF5Pty KF5Service KF5Solid KF5SonnetUi KF5Su
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Svg
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml X11 c kworkspace5 m

MODKDE5_TRANSLATIONS = Yes
MODKDE5_DOCS = Yes

RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdesu \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		x11/kde-plasma/plasma-workspace

.include <bsd.port.mk>
