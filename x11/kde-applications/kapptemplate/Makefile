COMMENT =	app template generator for KDE development
DISTNAME =	kapptemplate-${VERSION}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	https://kde.org/applications/development/org.kde.kapptemplate

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6I18n
WANTLIB += KF6IconThemes KF6WidgetsAddons Qt6Core Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6Quick Qt6QuickControls2 Qt6Widgets
WANTLIB += c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	archivers/gtar \
		graphics/kirigami-addons

RUN_DEPENDS =	graphics/kirigami-addons

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kcolorscheme \
		devel/kf6/kiconthemes \
		devel/kf6/kconfigwidgets \
		devel/kf6/kwidgetsaddons \
		x11/qt6/qtdeclarative

post-extract:
	@ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
