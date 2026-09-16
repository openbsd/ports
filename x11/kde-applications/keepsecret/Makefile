COMMENT =	KDE password manager
DISTNAME =	keepsecret-${VERSION}
CATEGORIES =	x11 security

HOMEPAGE =	https://apps.kde.org/keepsecret/

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6I18n KF6I18nQml KirigamiActionCollection
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6Quick Qt6QuickControls2 Qt6Svg Qt6Widgets Qt6Xml
WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 intl m secret-1

MODKDE_DESKTOP_FILE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes
MODKDE_ICON_CACHE = yes

BUILD_DEPENDS =	devel/kf6/ktextwidgets \
		graphics/kirigami-app-components

RUN_DEPENDS =	devel/kf6/ktextwidgets \
		graphics/kirigami-app-components \
		x11/dbus,-suid

LIB_DEPENDS =	devel/gettext,-runtime \
		devel/glib2 \
		devel/glib2,bootstrap \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/gettext \
		x11/gnome/libsecret \
		x11/qt6/qtsvg \
		devel/kf6/ki18n \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
