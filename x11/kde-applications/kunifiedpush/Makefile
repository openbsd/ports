COMMENT =	UnifiedPush client components
DISTNAME =	kunifiedpush-${VERSION}
CATEGORIES =	devel net

HOMEPAGE =	https://invent.kde.org/libraries/kunifiedpush

SHARED_LIBS +=  KUnifiedPush              0.0 # 0.0

MODKDE_TRANSLATIONS = yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6CoreAddons KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6Service Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6Qml Qt6WebSockets c m

LIB_DEPENDS =	devel/kf6/kcmutils \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kservice \
		x11/qt6/qtdeclarative \
		x11/qt6/qtwebsockets

# KDE Gear 25.08
#LIB_DEPENDS =	security/openssl/3.5
#WANTLIB += lib/eopenssl35/crypto
#CXXFLAGS+=	-I${LOCALBASE}/include/eopenssl35
#MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib/eopenssl35/ -lcrypto

.include <bsd.port.mk>
