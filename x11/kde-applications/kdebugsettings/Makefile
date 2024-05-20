COMMENT =	application to edit QLoggingCategory
DISTNAME =	kdebugsettings-${VERSION}
CATEGORIES =	x11 sysutils

SHARED_LIBS +=  kdebugsettings         6.1 # 5.0
SHARED_LIBS +=  kdebugsettingscore     1.1 # 5.0

HOMEPAGE =	https://apps.kde.org/kdebugsettings/

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6DBusAddons KF6I18n KF6WidgetsAddons KF6XmlGui Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Widgets Qt6Xml c m


MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui


TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
