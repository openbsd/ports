COMMENT =	screen ruler for KDE
DISTNAME =	kruler-${VERSION}
CATEGORIES =	graphics

HOMEPAGE =	https://www.kde.org/applications/graphics/kruler/

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6GuiAddons KF6I18n KF6Notifications KF6StatusNotifierItem
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Widgets Qt6Xml X11 c m xcb xkbcommon

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/knotifications \
		devel/kf6/kguiaddons \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/kcrash \
		x11/xkbcommon

.include <bsd.port.mk>
