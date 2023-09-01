COMMENT =	application to edit QLoggingCategory
DISTNAME =	kdebugsettings-${VERSION}
CATEGORIES =	x11 sysutils

SHARED_LIBS +=  kdebugsettings         5.0 # 5.0
SHARED_LIBS +=  kdebugsettingscore     0.0 # 5.0

HOMEPAGE =	https://apps.kde.org/kdebugsettings/

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5I18n KF5ItemViews KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5Xml
WANTLIB += c m

WANTLIB += lib/inotify/inotify

MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kitemviews \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/libinotify

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
