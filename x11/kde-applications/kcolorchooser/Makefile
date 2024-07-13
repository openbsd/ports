COMMENT =	KDE color selector
DISTNAME =	kcolorchooser-${VERSION}
CATEGORIES =	x11 graphics

HOMEPAGE =	https://www.kde.org/applications/graphics/kcolorchooser/

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6I18n
WANTLIB += KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Widgets
WANTLIB += Qt6Xml c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui

.include <bsd.port.mk>
