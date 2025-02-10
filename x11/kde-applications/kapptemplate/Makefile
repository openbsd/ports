COMMENT =	app template generator for KDE development
DISTNAME =	kapptemplate-${VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://kde.org/applications/development/org.kde.kapptemplate

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ConfigCore KF6ConfigGui
WANTLIB += KF6CoreAddons KF6I18n Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6Widgets c m

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
		x11/qt6/qtdeclarative

post-extract:
	@ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
