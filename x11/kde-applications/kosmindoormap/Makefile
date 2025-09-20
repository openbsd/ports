COMMENT =	OSM multi-floor indoor map renderer
DISTNAME =	kosmindoormap-${VERSION}
CATEGORIES =	geo
REVISION =	0

HOMEPAGE =	https://invent.kde.org/libraries/kosmindoormap

SHARED_LIBS +=	KOSM                      0.0 # 0.0
SHARED_LIBS +=	KOSMIndoorMap             0.0 # 0.0
SHARED_LIBS +=	KOSMIndoorRouting         0.0 # 0.0

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6I18n KF6I18nLocaleData
WANTLIB += KF6Service KOpeningHours KPublicTransport Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels
WANTLIB += Qt6QmlWorkerScript Qt6Quick m xkbcommon

BUILD_DEPENDS =	devel/bison \
		devel/protobuf

LIB_DEPENDS =	devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kservice \
		x11/kde-applications/kpublictransport>=${VERSION} \
		x11/kde-applications/kopeninghours>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
