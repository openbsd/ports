COMMENT =	KDE character select and clipboard copy
DISTNAME =	kcharselect-${VERSION}
CATEGORIES =	x11 sysutils

HOMEPAGE =	https://kde.org/applications/utilities/org.kde.kcharselect

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6BookmarksWidgets
WANTLIB += KF6ColorScheme KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6Crash KF6I18n KF6WidgetsAddons KF6XmlGui
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Widgets Qt6Xml c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui

.include <bsd.port.mk>
