COMMENT =	simple timer tray app for KDE
DISTNAME =	kteatime-${VERSION}
CATEGORIES =	productivity

HOMEPAGE =	https://kde.org/applications/utilities/org.kde.kteatime

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6GuiAddons KF6I18n KF6IconThemes KF6Notifications
WANTLIB += KF6NotifyConfig KF6SonnetUi KF6TextWidgets KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Widgets Qt6Xml
WANTLIB += c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/sonnet

.include <bsd.port.mk>
