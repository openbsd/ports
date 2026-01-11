COMMENT =	library for accessing realtime public transport data
DISTNAME =	kpublictransport-${VERSION}
CATEGORIES =	geo

HOMEPAGE =	https://invent.kde.org/libraries/kpublictransport

SHARED_LIBS +=	KPublicTransport          2.0 # 0.0
SHARED_LIBS +=	KPublicTransportOnboard   0.0 # 0.0

MODKDE_TRANSLATIONS = yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6I18n KF6I18nLocaleData Qt6Core
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels
WANTLIB += Qt6QmlWorkerScript Qt6Quick m z

BUILD_DEPENDS =	devel/protobuf \
		graphics/kirigami-addons

RUN_DEPENDS =	graphics/kirigami-addons

LIB_DEPENDS =	devel/kf6/ki18n \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
