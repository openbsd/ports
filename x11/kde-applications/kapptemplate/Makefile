COMMENT =	app template generator for KDE development
DISTNAME =	kapptemplate-${VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://kde.org/applications/development/org.kde.kapptemplate

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Service KF6Solid KF6WidgetsAddons Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Widgets c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	archivers/gtar

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kjobwidgets \
		devel/kf6/kio \
		devel/kf6/kservice \
		devel/kf6/kcolorscheme \
		devel/kf6/solid \
		devel/kf6/kwidgetsaddons

post-extract:
	@ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
