COMMENT =	pronunciation trainer
DISTNAME =	artikulate-${VERSION}
CATEGORIES =	education
REVISION =	1

SHARED_LIBS +=  artikulatecore            4.0 # 0.0
SHARED_LIBS +=  artikulatelearnerprofile  3.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Attica KF6ConfigCore
WANTLIB += KF6ConfigGui KF6CoreAddons KF6Crash KF6I18n KF6ItemModels
WANTLIB += KF6NewStuffCore Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6Sql Qt6Widgets Qt6Xml c m xml2

MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF6_L10N_CONFLICT = yes
MODKDE_DOCS = yes
MODKDE_DESKTOP_FILE = yes

BUILD_DEPENDS = x11/qt6/qtmultimedia
LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/karchive \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kitemmodels \
		devel/kf6/knewstuff \
		textproc/libxml \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
